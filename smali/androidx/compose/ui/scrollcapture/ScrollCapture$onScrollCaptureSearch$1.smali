.class final synthetic Landroidx/compose/ui/scrollcapture/ScrollCapture$onScrollCaptureSearch$1;
.super Lkotlin/jvm/internal/AdaptedFunctionReference;
.source "ScrollCapture.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    .line 0
    const-class v3, Landroidx/compose/runtime/collection/MutableVector;

    const-string v5, "add(Ljava/lang/Object;)Z"

    const/16 v6, 0x8

    const/4 v1, 0x1

    const-string v4, "add"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 79
    check-cast p1, Landroidx/compose/ui/scrollcapture/ScrollCaptureCandidate;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/scrollcapture/ScrollCapture$onScrollCaptureSearch$1;->invoke(Landroidx/compose/ui/scrollcapture/ScrollCaptureCandidate;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/scrollcapture/ScrollCaptureCandidate;)V
    .locals 0

    .line 79
    iget-object p0, p0, Lkotlin/jvm/internal/AdaptedFunctionReference;->receiver:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    return-void
.end method
