.class final Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$userPresets$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EqualizerRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;


# direct methods
.method constructor <init>(Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$userPresets$1;->this$0:Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 0
    new-instance v0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$userPresets$1;

    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$userPresets$1;->this$0:Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;

    invoke-direct {v0, p0, p2}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$userPresets$1;-><init>(Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$userPresets$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$userPresets$1;->invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$userPresets$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$userPresets$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$userPresets$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 65
    iget v1, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$userPresets$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$userPresets$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    .line 66
    new-instance v1, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$userPresets$1$listener$1;

    iget-object v3, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$userPresets$1;->this$0:Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;

    invoke-direct {v1, p1, v3}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$userPresets$1$listener$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;)V

    .line 79
    iget-object v3, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$userPresets$1;->this$0:Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;

    invoke-static {v3}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->access$getPresetsSharedPrefs(Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 80
    sget-object v3, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    const-string v4, "EqRepository"

    const-string v5, "presetsSharedPrefs registered listener"

    invoke-virtual {v3, v4, v5}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v3, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$userPresets$1;->this$0:Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;

    invoke-static {v3}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->access$getPresetsSharedPrefs(Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;)Landroid/content/SharedPreferences;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 84
    new-instance v3, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$userPresets$1$1;

    iget-object v4, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$userPresets$1;->this$0:Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;

    invoke-direct {v3, v4, v1}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$userPresets$1$1;-><init>(Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iput v2, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$userPresets$1;->label:I

    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    .line 88
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
