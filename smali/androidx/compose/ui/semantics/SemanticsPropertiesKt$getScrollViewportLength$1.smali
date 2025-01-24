.class final Landroidx/compose/ui/semantics/SemanticsPropertiesKt$getScrollViewportLength$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SemanticsProperties.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $action:Lkotlin/jvm/functions/Function0;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt$getScrollViewportLength$1;->$action:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/util/List;)Ljava/lang/Boolean;
    .locals 0

    .line 1454
    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt$getScrollViewportLength$1;->$action:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1458
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    .line 1459
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1452
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt$getScrollViewportLength$1;->invoke(Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
