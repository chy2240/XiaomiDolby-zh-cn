.class final Landroidx/compose/foundation/text/input/internal/EditorInfoApi34;
.super Ljava/lang/Object;
.source "EditorInfo.android.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/text/input/internal/EditorInfoApi34;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/foundation/text/input/internal/EditorInfoApi34;

    invoke-direct {v0}, Landroidx/compose/foundation/text/input/internal/EditorInfoApi34;-><init>()V

    sput-object v0, Landroidx/compose/foundation/text/input/internal/EditorInfoApi34;->INSTANCE:Landroidx/compose/foundation/text/input/internal/EditorInfoApi34;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setHandwritingGestures(Landroid/view/inputmethod/EditorInfo;)V
    .locals 7

    const/4 p0, 0x7

    .line 178
    new-array p0, p0, [Ljava/lang/Class;

    const-class v0, Landroid/view/inputmethod/SelectGesture;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    .line 179
    const-class v0, Landroid/view/inputmethod/DeleteGesture;

    const/4 v2, 0x1

    aput-object v0, p0, v2

    .line 180
    const-class v0, Landroid/view/inputmethod/SelectRangeGesture;

    const/4 v3, 0x2

    aput-object v0, p0, v3

    .line 181
    const-class v0, Landroid/view/inputmethod/DeleteRangeGesture;

    const/4 v4, 0x3

    aput-object v0, p0, v4

    .line 182
    const-class v0, Landroid/view/inputmethod/JoinOrSplitGesture;

    const/4 v5, 0x4

    aput-object v0, p0, v5

    const/4 v0, 0x5

    .line 183
    const-class v6, Landroid/view/inputmethod/InsertGesture;

    aput-object v6, p0, v0

    const/4 v0, 0x6

    .line 184
    const-class v6, Landroid/view/inputmethod/RemoveSpaceGesture;

    aput-object v6, p0, v0

    .line 177
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 176
    invoke-virtual {p1, p0}, Landroid/view/inputmethod/EditorInfo;->setSupportedHandwritingGestures(Ljava/util/List;)V

    .line 188
    new-array p0, v5, [Ljava/lang/Class;

    const-class v0, Landroid/view/inputmethod/SelectGesture;

    aput-object v0, p0, v1

    .line 189
    const-class v0, Landroid/view/inputmethod/DeleteGesture;

    aput-object v0, p0, v2

    .line 190
    const-class v0, Landroid/view/inputmethod/SelectRangeGesture;

    aput-object v0, p0, v3

    .line 191
    const-class v0, Landroid/view/inputmethod/DeleteRangeGesture;

    aput-object v0, p0, v4

    .line 187
    invoke-static {p0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    .line 186
    invoke-virtual {p1, p0}, Landroid/view/inputmethod/EditorInfo;->setSupportedHandwritingGesturePreviews(Ljava/util/Set;)V

    return-void
.end method
