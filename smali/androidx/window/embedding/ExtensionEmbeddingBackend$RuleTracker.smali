.class final Landroidx/window/embedding/ExtensionEmbeddingBackend$RuleTracker;
.super Ljava/lang/Object;
.source "ExtensionEmbeddingBackend.kt"


# instance fields
.field private final splitRules:Landroidx/collection/ArraySet;

.field private final tagRuleMap:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    new-instance v0, Landroidx/collection/ArraySet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/ArraySet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend$RuleTracker;->splitRules:Landroidx/collection/ArraySet;

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend$RuleTracker;->tagRuleMap:Ljava/util/HashMap;

    return-void
.end method
