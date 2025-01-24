.class public final Lco/aospa/dolby/xiaomi/geq/EqualizerActivity$special$$inlined$viewModels$default$3;
.super Lkotlin/jvm/internal/Lambda;
.source "ActivityViewModelLazy.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $extrasProducer:Lkotlin/jvm/functions/Function0;

.field final synthetic $this_viewModels:Landroidx/activity/ComponentActivity;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lco/aospa/dolby/xiaomi/geq/EqualizerActivity$special$$inlined$viewModels$default$3;->$extrasProducer:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lco/aospa/dolby/xiaomi/geq/EqualizerActivity$special$$inlined$viewModels$default$3;->$this_viewModels:Landroidx/activity/ComponentActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/lifecycle/viewmodel/CreationExtras;
    .locals 1

    .line 80
    iget-object v0, p0, Lco/aospa/dolby/xiaomi/geq/EqualizerActivity$special$$inlined$viewModels$default$3;->$extrasProducer:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/viewmodel/CreationExtras;

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/EqualizerActivity$special$$inlined$viewModels$default$3;->$this_viewModels:Landroidx/activity/ComponentActivity;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 80
    invoke-virtual {p0}, Lco/aospa/dolby/xiaomi/geq/EqualizerActivity$special$$inlined$viewModels$default$3;->invoke()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object p0

    return-object p0
.end method
