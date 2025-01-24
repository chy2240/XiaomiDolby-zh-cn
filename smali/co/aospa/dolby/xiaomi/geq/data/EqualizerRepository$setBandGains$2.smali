.class final Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$setBandGains$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EqualizerRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $bandGains:Ljava/util/List;

.field label:I

.field final synthetic this$0:Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;


# direct methods
.method constructor <init>(Ljava/util/List;Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$setBandGains$2;->$bandGains:Ljava/util/List;

    iput-object p2, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$setBandGains$2;->this$0:Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 0
    new-instance p1, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$setBandGains$2;

    iget-object v0, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$setBandGains$2;->$bandGains:Ljava/util/List;

    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$setBandGains$2;->this$0:Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;

    invoke-direct {p1, v0, p0, p2}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$setBandGains$2;-><init>(Ljava/util/List;Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$setBandGains$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$setBandGains$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$setBandGains$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$setBandGains$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 101
    iget v0, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$setBandGains$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 102
    sget-object p1, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    iget-object v0, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$setBandGains$2;->$bandGains:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBandGains("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EqRepository"

    invoke-virtual {p1, v1, v0}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->access$getCompanion$p()Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$Companion;

    move-result-object p1

    iget-object v0, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$setBandGains$2;->$bandGains:Ljava/util/List;

    invoke-virtual {p1, v0}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$Companion;->serializeGains(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 104
    iget-object v0, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$setBandGains$2;->this$0:Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;

    invoke-static {v0}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->access$getDolbyController(Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;)Lco/aospa/dolby/xiaomi/DolbyController;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Lco/aospa/dolby/xiaomi/DolbyController;->setPreset$default(Lco/aospa/dolby/xiaomi/DolbyController;Ljava/lang/String;IILjava/lang/Object;)V

    .line 105
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$setBandGains$2;->this$0:Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;

    invoke-static {p0}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->access$getProfileSharedPrefs(Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 106
    const-string v0, "dolby_preset"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 107
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 108
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 101
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
