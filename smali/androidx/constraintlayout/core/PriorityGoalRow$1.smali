.class Landroidx/constraintlayout/core/PriorityGoalRow$1;
.super Ljava/lang/Object;
.source "PriorityGoalRow.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$0:Landroidx/constraintlayout/core/PriorityGoalRow;


# direct methods
.method constructor <init>(Landroidx/constraintlayout/core/PriorityGoalRow;)V
    .locals 0

    .line 205
    iput-object p1, p0, Landroidx/constraintlayout/core/PriorityGoalRow$1;->this$0:Landroidx/constraintlayout/core/PriorityGoalRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;)I
    .locals 0

    .line 208
    iget p0, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    iget p1, p2, Landroidx/constraintlayout/core/SolverVariable;->id:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 205
    check-cast p1, Landroidx/constraintlayout/core/SolverVariable;

    check-cast p2, Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/PriorityGoalRow$1;->compare(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;)I

    move-result p0

    return p0
.end method
