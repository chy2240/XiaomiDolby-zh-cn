.class final Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$1;
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
    iput-object p1, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$1;->this$0:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 0
    new-instance v0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$1;

    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$1;->this$0:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;

    invoke-direct {v0, p0, p2}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$1;-><init>(Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Ljava/util/List;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$1;->invoke(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 42
    iget v1, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$1;->label:I

    const-string v2, "EqViewModel"

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 43
    sget-object v1, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updated userPresets: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$1;->this$0:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;

    invoke-static {v1}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->access$get_presets$p(Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$1;->this$0:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;

    .line 45
    invoke-interface {v4, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 46
    invoke-static {v5}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->access$getRepository$p(Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;)Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;

    move-result-object p1

    invoke-virtual {p1}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->getBuiltInPresets()Ljava/util/List;

    move-result-object p1

    invoke-interface {v4, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 47
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 44
    invoke-interface {v1, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 51
    iget-object p1, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$1;->this$0:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;

    invoke-static {p1}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->access$getPresetRestored$p(Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 52
    iget-object p1, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$1;->this$0:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;

    invoke-static {p1}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->access$getRepository$p(Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;)Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;

    move-result-object p1

    iput v3, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$1;->label:I

    invoke-virtual {p1, p0}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->getBandGains(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 42
    :cond_2
    :goto_0
    move-object v6, p1

    check-cast v6, Ljava/util/List;

    .line 53
    iget-object p1, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$1;->this$0:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;

    invoke-static {p1}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->access$get_preset$p(Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iget-object v0, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$1;->this$0:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;

    invoke-static {v0}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->access$get_presets$p(Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lco/aospa/dolby/xiaomi/geq/data/Preset;

    .line 54
    invoke-virtual {v4}, Lco/aospa/dolby/xiaomi/geq/data/Preset;->getBandGains()Ljava/util/List;

    move-result-object v4

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 53
    :goto_1
    check-cast v1, Lco/aospa/dolby/xiaomi/geq/data/Preset;

    if-nez v1, :cond_5

    .line 55
    new-instance v1, Lco/aospa/dolby/xiaomi/geq/data/Preset;

    const/16 v9, 0xc

    const/4 v10, 0x0

    const-string v5, "Custom"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lco/aospa/dolby/xiaomi/geq/data/Preset;-><init>(Ljava/lang/String;Ljava/util/List;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 53
    :cond_5
    invoke-interface {p1, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 59
    sget-object p1, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    iget-object v0, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$1;->this$0:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;

    invoke-static {v0}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->access$get_preset$p(Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restored preset: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$1;->this$0:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;

    invoke-static {p0, v3}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->access$setPresetRestored$p(Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;Z)V

    .line 62
    :cond_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
