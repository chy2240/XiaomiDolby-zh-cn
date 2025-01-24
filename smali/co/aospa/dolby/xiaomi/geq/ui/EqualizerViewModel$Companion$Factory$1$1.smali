.class final Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$Companion$Factory$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "EqualizerViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$Companion$Factory$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$Companion$Factory$1$1;

    invoke-direct {v0}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$Companion$Factory$1$1;-><init>()V

    sput-object v0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$Companion$Factory$1$1;->INSTANCE:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$Companion$Factory$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/lifecycle/viewmodel/CreationExtras;)Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;
    .locals 2

    const-string p0, "$this$initializer"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    new-instance p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;

    .line 168
    new-instance v0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;

    .line 169
    sget-object v1, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;->APPLICATION_KEY:Landroidx/lifecycle/viewmodel/CreationExtras$Key;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/viewmodel/CreationExtras;->get(Landroidx/lifecycle/viewmodel/CreationExtras$Key;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Landroid/content/Context;

    .line 168
    invoke-direct {v0, p1}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;-><init>(Landroid/content/Context;)V

    .line 167
    invoke-direct {p0, v0}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;-><init>(Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;)V

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 166
    check-cast p1, Landroidx/lifecycle/viewmodel/CreationExtras;

    invoke-virtual {p0, p1}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$Companion$Factory$1$1;->invoke(Landroidx/lifecycle/viewmodel/CreationExtras;)Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;

    move-result-object p0

    return-object p0
.end method
