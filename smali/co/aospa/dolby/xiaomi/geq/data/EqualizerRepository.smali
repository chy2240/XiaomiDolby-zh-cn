.class public final Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;
.super Ljava/lang/Object;
.source "EqualizerRepository.kt"


# static fields
.field public static final $stable:I

.field private static final Companion:Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$Companion;

.field private static final tenBandFreqs:[I


# instance fields
.field private final builtInPresets$delegate:Lkotlin/Lazy;

.field private final context:Landroid/content/Context;

.field private final defaultPreset$delegate:Lkotlin/Lazy;

.field private final dolbyController$delegate:Lkotlin/Lazy;

.field private final presetsSharedPrefs$delegate:Lkotlin/Lazy;

.field private final profile:I

.field private final profileSharedPrefs$delegate:Lkotlin/Lazy;

.field private final userPresets:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->Companion:Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$Companion;

    const/16 v0, 0x8

    sput v0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->$stable:I

    const/16 v0, 0xa

    .line 137
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 127
    sput-object v0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->tenBandFreqs:[I

    return-void

    :array_0
    .array-data 4
        0x20
        0x40
        0x7d
        0xfa
        0x1f4
        0x3e8
        0x7d0
        0xfa0
        0x1f40
        0x3e80
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->context:Landroid/content/Context;

    .line 26
    new-instance p1, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$dolbyController$2;

    invoke-direct {p1, p0}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$dolbyController$2;-><init>(Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->dolbyController$delegate:Lkotlin/Lazy;

    .line 30
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->getDolbyController()Lco/aospa/dolby/xiaomi/DolbyController;

    move-result-object p1

    invoke-virtual {p1}, Lco/aospa/dolby/xiaomi/DolbyController;->getProfile()I

    move-result p1

    iput p1, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->profile:I

    .line 31
    new-instance p1, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$profileSharedPrefs$2;

    invoke-direct {p1, p0}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$profileSharedPrefs$2;-><init>(Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->profileSharedPrefs$delegate:Lkotlin/Lazy;

    .line 38
    new-instance p1, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$presetsSharedPrefs$2;

    invoke-direct {p1, p0}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$presetsSharedPrefs$2;-><init>(Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->presetsSharedPrefs$delegate:Lkotlin/Lazy;

    .line 45
    new-instance p1, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$builtInPresets$2;

    invoke-direct {p1, p0}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$builtInPresets$2;-><init>(Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->builtInPresets$delegate:Lkotlin/Lazy;

    .line 60
    new-instance p1, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$defaultPreset$2;

    invoke-direct {p1, p0}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$defaultPreset$2;-><init>(Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->defaultPreset$delegate:Lkotlin/Lazy;

    .line 65
    new-instance p1, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$userPresets$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$userPresets$1;-><init>(Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->userPresets:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method

.method public static final synthetic access$getCompanion$p()Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$Companion;
    .locals 1

    .line 22
    sget-object v0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->Companion:Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$Companion;

    return-object v0
.end method

.method public static final synthetic access$getContext$p(Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;)Landroid/content/Context;
    .locals 0

    .line 22
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getDolbyController(Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;)Lco/aospa/dolby/xiaomi/DolbyController;
    .locals 0

    .line 22
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->getDolbyController()Lco/aospa/dolby/xiaomi/DolbyController;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPresetsSharedPrefs(Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;)Landroid/content/SharedPreferences;
    .locals 0

    .line 22
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->getPresetsSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getProfile$p(Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;)I
    .locals 0

    .line 22
    iget p0, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->profile:I

    return p0
.end method

.method public static final synthetic access$getProfileSharedPrefs(Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;)Landroid/content/SharedPreferences;
    .locals 0

    .line 22
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->getProfileSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTenBandFreqs$cp()[I
    .locals 1

    .line 22
    sget-object v0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->tenBandFreqs:[I

    return-object v0
.end method

.method private final getDolbyController()Lco/aospa/dolby/xiaomi/DolbyController;
    .locals 0

    .line 26
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->dolbyController$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/aospa/dolby/xiaomi/DolbyController;

    return-object p0
.end method

.method private final getPresetsSharedPrefs()Landroid/content/SharedPreferences;
    .locals 0

    .line 38
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->presetsSharedPrefs$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private final getProfileSharedPrefs()Landroid/content/SharedPreferences;
    .locals 0

    .line 31
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->profileSharedPrefs$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/SharedPreferences;

    return-object p0
.end method


# virtual methods
.method public final addPreset(Lco/aospa/dolby/xiaomi/geq/data/Preset;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 110
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$addPreset$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$addPreset$2;-><init>(Lco/aospa/dolby/xiaomi/geq/data/Preset;Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final getBandGains(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 90
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$getBandGains$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$getBandGains$2;-><init>(Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getBuiltInPresets()Ljava/util/List;
    .locals 0

    .line 45
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->builtInPresets$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final getDefaultPreset()Lco/aospa/dolby/xiaomi/geq/data/Preset;
    .locals 0

    .line 60
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->defaultPreset$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/aospa/dolby/xiaomi/geq/data/Preset;

    return-object p0
.end method

.method public final getUserPresets()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    .line 65
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->userPresets:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final removePreset(Lco/aospa/dolby/xiaomi/geq/data/Preset;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 117
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$removePreset$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$removePreset$2;-><init>(Lco/aospa/dolby/xiaomi/geq/data/Preset;Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final setBandGains(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 101
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$setBandGains$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$setBandGains$2;-><init>(Ljava/util/List;Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
