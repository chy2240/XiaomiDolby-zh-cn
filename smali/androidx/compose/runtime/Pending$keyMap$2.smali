.class final Landroidx/compose/runtime/Pending$keyMap$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Composer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Landroidx/compose/runtime/Pending;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/Pending;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/runtime/Pending$keyMap$2;->this$0:Landroidx/compose/runtime/Pending;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 143
    invoke-virtual {p0}, Landroidx/compose/runtime/Pending$keyMap$2;->invoke-SAeQiB4()Landroidx/collection/MutableScatterMap;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/runtime/MutableScatterMultiMap;->box-impl(Landroidx/collection/MutableScatterMap;)Landroidx/compose/runtime/MutableScatterMultiMap;

    move-result-object p0

    return-object p0
.end method

.method public final invoke-SAeQiB4()Landroidx/collection/MutableScatterMap;
    .locals 5

    .line 144
    iget-object v0, p0, Landroidx/compose/runtime/Pending$keyMap$2;->this$0:Landroidx/compose/runtime/Pending;

    invoke-virtual {v0}, Landroidx/compose/runtime/Pending;->getKeyInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->access$multiMap(I)Landroidx/collection/MutableScatterMap;

    move-result-object v0

    iget-object p0, p0, Landroidx/compose/runtime/Pending$keyMap$2;->this$0:Landroidx/compose/runtime/Pending;

    .line 145
    invoke-virtual {p0}, Landroidx/compose/runtime/Pending;->getKeyInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 146
    invoke-virtual {p0}, Landroidx/compose/runtime/Pending;->getKeyInfos()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/KeyInfo;

    .line 147
    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->access$getJoinedKey(Landroidx/compose/runtime/KeyInfo;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroidx/compose/runtime/MutableScatterMultiMap;->put-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
