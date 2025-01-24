.class public final Lco/aospa/dolby/xiaomi/geq/EqualizerActivity$special$$inlined$viewModels$default$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ActivityViewModelLazy.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $this_viewModels:Landroidx/activity/ComponentActivity;


# direct methods
.method public constructor <init>(Landroidx/activity/ComponentActivity;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lco/aospa/dolby/xiaomi/geq/EqualizerActivity$special$$inlined$viewModels$default$2;->$this_viewModels:Landroidx/activity/ComponentActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/lifecycle/ViewModelStore;
    .locals 0

    .line 78
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/EqualizerActivity$special$$inlined$viewModels$default$2;->$this_viewModels:Landroidx/activity/ComponentActivity;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 78
    invoke-virtual {p0}, Lco/aospa/dolby/xiaomi/geq/EqualizerActivity$special$$inlined$viewModels$default$2;->invoke()Landroidx/lifecycle/ViewModelStore;

    move-result-object p0

    return-object p0
.end method
