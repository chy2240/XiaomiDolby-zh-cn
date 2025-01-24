.class final Landroidx/compose/runtime/saveable/SaveableHolder;
.super Ljava/lang/Object;
.source "RememberSaveable.kt"

# interfaces
.implements Landroidx/compose/runtime/saveable/SaverScope;
.implements Landroidx/compose/runtime/RememberObserver;


# instance fields
.field private entry:Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;

.field private inputs:[Ljava/lang/Object;

.field private key:Ljava/lang/String;

.field private registry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

.field private saver:Landroidx/compose/runtime/saveable/Saver;

.field private value:Ljava/lang/Object;

.field private final valueProvider:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableStateRegistry;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->saver:Landroidx/compose/runtime/saveable/Saver;

    .line 127
    iput-object p2, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->registry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 128
    iput-object p3, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->key:Ljava/lang/String;

    .line 129
    iput-object p4, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->value:Ljava/lang/Object;

    .line 130
    iput-object p5, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->inputs:[Ljava/lang/Object;

    .line 134
    new-instance p1, Landroidx/compose/runtime/saveable/SaveableHolder$valueProvider$1;

    invoke-direct {p1, p0}, Landroidx/compose/runtime/saveable/SaveableHolder$valueProvider$1;-><init>(Landroidx/compose/runtime/saveable/SaveableHolder;)V

    iput-object p1, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->valueProvider:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static final synthetic access$getSaver$p(Landroidx/compose/runtime/saveable/SaveableHolder;)Landroidx/compose/runtime/saveable/Saver;
    .locals 0

    .line 125
    iget-object p0, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->saver:Landroidx/compose/runtime/saveable/Saver;

    return-object p0
.end method

.method public static final synthetic access$getValue$p(Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;
    .locals 0

    .line 125
    iget-object p0, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->value:Ljava/lang/Object;

    return-object p0
.end method

.method private final register()V
    .locals 3

    .line 165
    iget-object v0, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->registry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 166
    iget-object v1, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->entry:Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    .line 168
    iget-object v1, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->valueProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->access$requireCanBeSaved(Landroidx/compose/runtime/saveable/SaveableStateRegistry;Ljava/lang/Object;)V

    .line 169
    iget-object v1, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->key:Ljava/lang/String;

    iget-object v2, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->valueProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v1, v2}, Landroidx/compose/runtime/saveable/SaveableStateRegistry;->registerProvider(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->entry:Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;

    :cond_0
    return-void

    .line 166
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "entry("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->entry:Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ") is not null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public canBeSaved(Ljava/lang/Object;)Z
    .locals 0

    .line 174
    iget-object p0, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->registry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    if-eqz p0, :cond_1

    .line 175
    invoke-interface {p0, p1}, Landroidx/compose/runtime/saveable/SaveableStateRegistry;->canBeSaved(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final getValueIfInputsDidntChange([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 191
    iget-object v0, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->inputs:[Ljava/lang/Object;

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 192
    iget-object p0, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public onAbandoned()V
    .locals 0

    .line 187
    iget-object p0, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->entry:Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;->unregister()V

    :cond_0
    return-void
.end method

.method public onForgotten()V
    .locals 0

    .line 183
    iget-object p0, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->entry:Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;->unregister()V

    :cond_0
    return-void
.end method

.method public onRemembered()V
    .locals 0

    .line 179
    invoke-direct {p0}, Landroidx/compose/runtime/saveable/SaveableHolder;->register()V

    return-void
.end method

.method public final update(Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableStateRegistry;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 2

    .line 146
    iget-object v0, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->registry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    const/4 v1, 0x1

    if-eq v0, p2, :cond_0

    .line 147
    iput-object p2, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->registry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    move p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 150
    :goto_0
    iget-object v0, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->key:Ljava/lang/String;

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    iput-object p3, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->key:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move v1, p2

    .line 154
    :goto_1
    iput-object p1, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->saver:Landroidx/compose/runtime/saveable/Saver;

    .line 155
    iput-object p4, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->value:Ljava/lang/Object;

    .line 156
    iput-object p5, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->inputs:[Ljava/lang/Object;

    .line 157
    iget-object p1, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->entry:Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;

    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    .line 158
    invoke-interface {p1}, Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;->unregister()V

    :cond_2
    const/4 p1, 0x0

    .line 159
    iput-object p1, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->entry:Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;

    .line 160
    invoke-direct {p0}, Landroidx/compose/runtime/saveable/SaveableHolder;->register()V

    :cond_3
    return-void
.end method
