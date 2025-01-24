.class public final Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "EqualizerViewModel.kt"


# static fields
.field public static final $stable:I

.field public static final Companion:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$Companion;

.field private static final Factory:Landroidx/lifecycle/ViewModelProvider$Factory;


# instance fields
.field private final _preset:Lkotlinx/coroutines/flow/MutableStateFlow;

.field private final _presets:Lkotlinx/coroutines/flow/MutableStateFlow;

.field private final preset:Lkotlinx/coroutines/flow/StateFlow;

.field private presetRestored:Z

.field private final presets:Lkotlinx/coroutines/flow/StateFlow;

.field private final repository:Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->Companion:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$Companion;

    const/16 v0, 0x8

    sput v0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->$stable:I

    .line 32
    new-instance v0, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;

    invoke-direct {v0}, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;-><init>()V

    .line 166
    sget-object v1, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$Companion$Factory$1$1;->INSTANCE:Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$Companion$Factory$1$1;

    .line 69
    const-class v2, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;->addInitializer(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;)V

    .line 32
    invoke-virtual {v0}, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;->build()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    .line 165
    sput-object v0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->Factory:Landroidx/lifecycle/ViewModelProvider$Factory;

    return-void
.end method

.method public constructor <init>(Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;)V
    .locals 3

    const-string v0, "repository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 27
    iput-object p1, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->repository:Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;

    .line 30
    invoke-virtual {p1}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->getBuiltInPresets()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->_presets:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 31
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->presets:Lkotlinx/coroutines/flow/StateFlow;

    .line 33
    invoke-virtual {p1}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->getDefaultPreset()Lco/aospa/dolby/xiaomi/geq/data/Preset;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->_preset:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 34
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->preset:Lkotlinx/coroutines/flow/StateFlow;

    .line 41
    invoke-virtual {p1}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->getUserPresets()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 42
    new-instance v1, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$1;-><init>(Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/FlowKt;->onEach(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 63
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    const/4 p1, 0x1

    .line 67
    invoke-static {v0, p1}, Lkotlinx/coroutines/flow/FlowKt;->drop(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 68
    new-instance v0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$2;

    invoke-direct {v0, p0, v2}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$2;-><init>(Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->onEach(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 79
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$getFactory$cp()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 1

    .line 26
    sget-object v0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->Factory:Landroidx/lifecycle/ViewModelProvider$Factory;

    return-object v0
.end method

.method public static final synthetic access$getPresetRestored$p(Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->presetRestored:Z

    return p0
.end method

.method public static final synthetic access$getRepository$p(Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;)Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;
    .locals 0

    .line 26
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->repository:Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;

    return-object p0
.end method

.method public static final synthetic access$get_preset$p(Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 26
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->_preset:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public static final synthetic access$get_presets$p(Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 26
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->_presets:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public static final synthetic access$setPresetRestored$p(Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->presetRestored:Z

    return-void
.end method

.method public static synthetic deletePreset$default(Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;Lco/aospa/dolby/xiaomi/geq/data/Preset;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 154
    :cond_0
    invoke-virtual {p0, p1, p2}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->deletePreset(Lco/aospa/dolby/xiaomi/geq/data/Preset;Z)V

    return-void
.end method

.method private final validatePresetName(Ljava/lang/String;)Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;
    .locals 3

    .line 119
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->_presets:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 1747
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1748
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/aospa/dolby/xiaomi/geq/data/Preset;

    .line 120
    invoke-virtual {v0}, Lco/aospa/dolby/xiaomi/geq/data/Preset;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    sget-object p0, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;->NAME_EXISTS:Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;

    goto :goto_1

    .line 123
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0x32

    if-le p0, p1, :cond_3

    .line 124
    sget-object p0, Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;->NAME_TOO_LONG:Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method


# virtual methods
.method public final createNewPreset(Ljava/lang/String;)Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;
    .locals 8

    .line 130
    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createNewPreset("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EqViewModel"

    invoke-virtual {v0, v2, v1}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-direct {p0, p1}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->validatePresetName(Ljava/lang/String;)Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 131
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "createNewPreset failed: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 134
    :cond_0
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->_preset:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lco/aospa/dolby/xiaomi/geq/data/Preset;

    .line 135
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 134
    invoke-static/range {v1 .. v7}, Lco/aospa/dolby/xiaomi/geq/data/Preset;->copy$default(Lco/aospa/dolby/xiaomi/geq/data/Preset;Ljava/lang/String;Ljava/util/List;ZZILjava/lang/Object;)Lco/aospa/dolby/xiaomi/geq/data/Preset;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final deletePreset(Lco/aospa/dolby/xiaomi/geq/data/Preset;Z)V
    .locals 9

    const-string v0, "preset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deletePreset("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EqViewModel"

    invoke-virtual {v0, v2, v1}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    new-instance v6, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$deletePreset$1;

    const/4 v0, 0x0

    invoke-direct {v6, p0, p1, v0}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel$deletePreset$1;-><init>(Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;Lco/aospa/dolby/xiaomi/geq/data/Preset;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    if-eqz p2, :cond_0

    .line 160
    iget-object p1, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->_preset:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->repository:Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;

    invoke-virtual {p0}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->getDefaultPreset()Lco/aospa/dolby/xiaomi/geq/data/Preset;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final getPreset()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    .line 34
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->preset:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final getPresets()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    .line 31
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->presets:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final renamePreset(Lco/aospa/dolby/xiaomi/geq/data/Preset;Ljava/lang/String;)Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;
    .locals 3

    .line 145
    const-string v0, "preset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "renamePreset("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EqViewModel"

    invoke-virtual {v0, v2, v1}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0, p2}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->createNewPreset(Ljava/lang/String;)Lco/aospa/dolby/xiaomi/geq/ui/PresetNameValidationError;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 146
    const-string p0, "renamePreset failed"

    invoke-virtual {v0, v2, p0}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_0
    const/4 p2, 0x0

    .line 150
    invoke-virtual {p0, p1, p2}, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->deletePreset(Lco/aospa/dolby/xiaomi/geq/data/Preset;Z)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final reset()V
    .locals 9

    .line 83
    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    const-string v1, "EqViewModel"

    const-string v2, "reset()"

    invoke-virtual {v0, v1, v2}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->_preset:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/aospa/dolby/xiaomi/geq/data/Preset;

    invoke-virtual {v0}, Lco/aospa/dolby/xiaomi/geq/data/Preset;->isUserDefined()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->_preset:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lco/aospa/dolby/xiaomi/geq/data/Preset;

    .line 87
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->repository:Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;

    invoke-virtual {p0}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->getDefaultPreset()Lco/aospa/dolby/xiaomi/geq/data/Preset;

    move-result-object p0

    invoke-virtual {p0}, Lco/aospa/dolby/xiaomi/geq/data/Preset;->getBandGains()Ljava/util/List;

    move-result-object v4

    const/16 v7, 0xd

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 86
    invoke-static/range {v2 .. v8}, Lco/aospa/dolby/xiaomi/geq/data/Preset;->copy$default(Lco/aospa/dolby/xiaomi/geq/data/Preset;Ljava/lang/String;Ljava/util/List;ZZILjava/lang/Object;)Lco/aospa/dolby/xiaomi/geq/data/Preset;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->_preset:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->repository:Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;

    invoke-virtual {p0}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->getDefaultPreset()Lco/aospa/dolby/xiaomi/geq/data/Preset;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final setGain(II)V
    .locals 8

    .line 101
    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGain("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EqViewModel"

    invoke-virtual {v0, v2, v1}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->_preset:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lco/aospa/dolby/xiaomi/geq/data/Preset;

    .line 104
    invoke-virtual {v1}, Lco/aospa/dolby/xiaomi/geq/data/Preset;->isUserDefined()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Custom"

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lco/aospa/dolby/xiaomi/geq/data/Preset;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 105
    :goto_1
    invoke-virtual {v1}, Lco/aospa/dolby/xiaomi/geq/data/Preset;->getBandGains()Ljava/util/List;

    move-result-object v0

    .line 106
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 108
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/aospa/dolby/xiaomi/geq/data/BandGain;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v6, p2, v4, v5}, Lco/aospa/dolby/xiaomi/geq/data/BandGain;->copy$default(Lco/aospa/dolby/xiaomi/geq/data/BandGain;IIILjava/lang/Object;)Lco/aospa/dolby/xiaomi/geq/data/BandGain;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 109
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 103
    invoke-static/range {v1 .. v7}, Lco/aospa/dolby/xiaomi/geq/data/Preset;->copy$default(Lco/aospa/dolby/xiaomi/geq/data/Preset;Ljava/lang/String;Ljava/util/List;ZZILjava/lang/Object;)Lco/aospa/dolby/xiaomi/geq/data/Preset;

    move-result-object p1

    .line 102
    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setPreset(Lco/aospa/dolby/xiaomi/geq/data/Preset;)V
    .locals 3

    const-string v0, "preset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreset("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EqViewModel"

    invoke-virtual {v0, v2, v1}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/ui/EqualizerViewModel;->_preset:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method
