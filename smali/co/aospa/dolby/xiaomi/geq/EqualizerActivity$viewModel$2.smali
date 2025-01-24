.class final Lco/aospa/dolby/xiaomi/geq/EqualizerActivity$viewModel$2;
.super Lkotlin/jvm/internal/Lambda;
.source "EqualizerActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Lco/aospa/dolby/xiaomi/geq/EqualizerActivity$viewModel$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lco/aospa/dolby/xiaomi/geq/EqualizerActivity$viewModel$2;

    invoke-direct {v0}, Lco/aospa/dolby/xiaomi/geq/EqualizerActivity$viewModel$2;-><init>()V

    sput-object v0, Lco/aospa/dolby/xiaomi/geq/EqualizerActivity$viewModel$2;->INSTANCE:Lco/aospa/dolby/xiaomi/geq/EqualizerActivity$viewModel$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 0

    .line 28
    sget-object p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->Companion:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$Companion;

    invoke-virtual {p0}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$Companion;->getFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0}, Lco/aospa/dolby/xiaomi/geq/EqualizerActivity$viewModel$2;->invoke()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object p0

    return-object p0
.end method
