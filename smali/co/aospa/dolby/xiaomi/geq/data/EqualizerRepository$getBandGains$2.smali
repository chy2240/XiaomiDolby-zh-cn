.class final Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$getBandGains$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EqualizerRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field label:I

.field final synthetic this$0:Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;


# direct methods
.method constructor <init>(Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$getBandGains$2;->this$0:Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    .line 0
    new-instance p1, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$getBandGains$2;

    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$getBandGains$2;->this$0:Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;

    invoke-direct {p1, p0, p2}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$getBandGains$2;-><init>(Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$getBandGains$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$getBandGains$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$getBandGains$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$getBandGains$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 90
    iget v0, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$getBandGains$2;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 91
    iget-object p1, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$getBandGains$2;->this$0:Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;

    invoke-static {p1}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->access$getProfileSharedPrefs(Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object v0, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$getBandGains$2;->this$0:Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;

    invoke-static {v0}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->access$getDolbyController(Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;)Lco/aospa/dolby/xiaomi/DolbyController;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lco/aospa/dolby/xiaomi/DolbyController;->getPreset$default(Lco/aospa/dolby/xiaomi/DolbyController;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dolby_preset"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 92
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    invoke-static {}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->access$getCompanion$p()Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$Companion;

    move-result-object p0

    invoke-virtual {p0, p1}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$Companion;->deserializeGains(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    .line 93
    :cond_1
    :goto_0
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$getBandGains$2;->this$0:Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;

    invoke-virtual {p0}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->getDefaultPreset()Lco/aospa/dolby/xiaomi/geq/data/Preset;

    move-result-object p0

    invoke-virtual {p0}, Lco/aospa/dolby/xiaomi/geq/data/Preset;->getBandGains()Ljava/util/List;

    move-result-object p0

    .line 97
    :goto_1
    sget-object p1, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBandGains: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EqRepository"

    invoke-virtual {p1, v1, v0}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 90
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
