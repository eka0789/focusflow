from pydantic import BaseModel, Field

class FocusInput(BaseModel):
    duration_minutes: float = Field(..., gt=0)
    target_duration_minutes: float = Field(..., gt=0)
    distraction_count: int = Field(..., ge=0)
    self_focus: int = Field(..., ge=1, le=10)
    tasks_completed: int = Field(..., ge=0)
    total_tasks: int = Field(..., ge=1)

class FocusScoreResult(BaseModel):
    focus_score: float
