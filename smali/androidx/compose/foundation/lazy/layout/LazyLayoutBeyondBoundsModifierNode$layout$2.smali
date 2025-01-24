.class public final Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode$layout$2;
.super Ljava/lang/Object;
.source "LazyLayoutBeyondBoundsModifierLocal.kt"

# interfaces
.implements Landroidx/compose/ui/layout/BeyondBoundsLayout$BeyondBoundsScope;


# instance fields
.field final synthetic $direction:I

.field final synthetic $interval:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode;Lkotlin/jvm/internal/Ref$ObjectRef;I)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode$layout$2;->this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode$layout$2;->$interval:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput p3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode$layout$2;->$direction:I

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHasMoreContent()Z
    .locals 2

    .line 179
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode$layout$2;->this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode;

    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode$layout$2;->$interval:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;

    iget p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode$layout$2;->$direction:I

    invoke-static {v0, v1, p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode;->access$hasMoreContent-FR3nfPY(Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;I)Z

    move-result p0

    return p0
.end method
