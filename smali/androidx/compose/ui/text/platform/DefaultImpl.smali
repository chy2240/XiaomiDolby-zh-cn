.class final Landroidx/compose/ui/text/platform/DefaultImpl;
.super Ljava/lang/Object;
.source "EmojiCompatStatus.android.kt"

# interfaces
.implements Landroidx/compose/ui/text/platform/EmojiCompatStatusDelegate;


# instance fields
.field private loadState:Landroidx/compose/runtime/State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->isConfigured()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-direct {p0}, Landroidx/compose/ui/text/platform/DefaultImpl;->getFontLoadState()Landroidx/compose/runtime/State;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 64
    :goto_0
    iput-object v0, p0, Landroidx/compose/ui/text/platform/DefaultImpl;->loadState:Landroidx/compose/runtime/State;

    return-void
.end method

.method public static final synthetic access$setLoadState$p(Landroidx/compose/ui/text/platform/DefaultImpl;Landroidx/compose/runtime/State;)V
    .locals 0

    .line 59
    iput-object p1, p0, Landroidx/compose/ui/text/platform/DefaultImpl;->loadState:Landroidx/compose/runtime/State;

    return-void
.end method

.method private final getFontLoadState()Landroidx/compose/runtime/State;
    .locals 4

    .line 90
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiCompat;->getLoadState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 92
    new-instance p0, Landroidx/compose/ui/text/platform/ImmutableBool;

    invoke-direct {p0, v2}, Landroidx/compose/ui/text/platform/ImmutableBool;-><init>(Z)V

    goto :goto_0

    .line 94
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    .line 96
    new-instance v2, Landroidx/compose/ui/text/platform/DefaultImpl$getFontLoadState$initCallback$1;

    invoke-direct {v2, v1, p0}, Landroidx/compose/ui/text/platform/DefaultImpl$getFontLoadState$initCallback$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/text/platform/DefaultImpl;)V

    .line 106
    invoke-virtual {v0, v2}, Landroidx/emoji2/text/EmojiCompat;->registerInitCallback(Landroidx/emoji2/text/EmojiCompat$InitCallback;)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getFontLoaded()Landroidx/compose/runtime/State;
    .locals 1

    .line 75
    iget-object v0, p0, Landroidx/compose/ui/text/platform/DefaultImpl;->loadState:Landroidx/compose/runtime/State;

    if-eqz v0, :cond_0

    .line 76
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    .line 79
    :cond_0
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->isConfigured()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    invoke-direct {p0}, Landroidx/compose/ui/text/platform/DefaultImpl;->getFontLoadState()Landroidx/compose/runtime/State;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/text/platform/DefaultImpl;->loadState:Landroidx/compose/runtime/State;

    .line 81
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    .line 85
    :cond_1
    invoke-static {}, Landroidx/compose/ui/text/platform/EmojiCompatStatus_androidKt;->access$getFalsey$p()Landroidx/compose/ui/text/platform/ImmutableBool;

    move-result-object v0

    :goto_0
    return-object v0
.end method
