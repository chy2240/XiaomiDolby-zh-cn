.class final Landroidx/compose/foundation/MagnifierNode$onObservedReadsChanged$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Magnifier.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/MagnifierNode;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/MagnifierNode;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/MagnifierNode$onObservedReadsChanged$1;->this$0:Landroidx/compose/foundation/MagnifierNode;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 397
    invoke-virtual {p0}, Landroidx/compose/foundation/MagnifierNode$onObservedReadsChanged$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 0

    .line 397
    iget-object p0, p0, Landroidx/compose/foundation/MagnifierNode$onObservedReadsChanged$1;->this$0:Landroidx/compose/foundation/MagnifierNode;

    invoke-static {p0}, Landroidx/compose/foundation/MagnifierNode;->access$updateMagnifier(Landroidx/compose/foundation/MagnifierNode;)V

    return-void
.end method
