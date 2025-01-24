.class final Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EqualizerViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;


# direct methods
.method constructor <init>(Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$2;->this$0:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 0
    new-instance v0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$2;

    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$2;->this$0:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;

    invoke-direct {v0, p0, p2}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$2;-><init>(Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Lco/aospa/dolby/xiaomi/geq/data/Preset;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lco/aospa/dolby/xiaomi/geq/data/Preset;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$2;->invoke(Lco/aospa/dolby/xiaomi/geq/data/Preset;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 68
    iget v1, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$2;->L$0:Ljava/lang/Object;

    check-cast v1, Lco/aospa/dolby/xiaomi/geq/data/Preset;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$2;->L$0:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lco/aospa/dolby/xiaomi/geq/data/Preset;

    .line 70
    iget-object p1, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$2;->this$0:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;

    invoke-static {p1}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->access$getPresetRestored$p(Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 71
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 73
    :cond_3
    sget-object p1, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updated preset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "EqViewModel"

    invoke-virtual {p1, v5, v4}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object p1, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$2;->this$0:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;

    invoke-static {p1}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->access$getRepository$p(Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;)Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;

    move-result-object p1

    invoke-virtual {v1}, Lco/aospa/dolby/xiaomi/geq/data/Preset;->getBandGains()Ljava/util/List;

    move-result-object v4

    iput-object v1, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$2;->L$0:Ljava/lang/Object;

    iput v3, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$2;->label:I

    invoke-virtual {p1, v4, p0}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->setBandGains(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 75
    :cond_4
    :goto_0
    invoke-virtual {v1}, Lco/aospa/dolby/xiaomi/geq/data/Preset;->isUserDefined()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 76
    iget-object p1, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$2;->this$0:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;

    invoke-static {p1}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->access$getRepository$p(Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;)Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;

    move-result-object p1

    const/4 v3, 0x0

    iput-object v3, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$2;->label:I

    invoke-virtual {p1, v1, p0}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->addPreset(Lco/aospa/dolby/xiaomi/geq/data/Preset;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    return-object v0

    .line 78
    :cond_5
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
