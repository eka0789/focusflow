from fastapi import APIRouter
from models.focus import FocusInput, FocusScoreResult

router = APIRouter()

@router.post("/focus-score", response_model=FocusScoreResult)
def calculate_focus_score(data: FocusInput):
    duration_effectiveness = min(data.duration_minutes / data.target_duration_minutes, 1.0)
    distraction_level = min(data.distraction_count / 10, 1.0)  # normalize, cap at 10
    tasks_completed_ratio = min(data.tasks_completed / data.total_tasks, 1.0)

    score = (
        duration_effectiveness * 0.3 +
        (1 - distraction_level) * 0.25 +
        (data.self_focus / 10.0) * 0.2 +
        tasks_completed_ratio * 0.25
    ) * 100

    return FocusScoreResult(focus_score=round(score, 2))
