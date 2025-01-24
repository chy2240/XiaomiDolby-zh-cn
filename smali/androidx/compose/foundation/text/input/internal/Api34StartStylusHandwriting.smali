.class public final Landroidx/compose/foundation/text/input/internal/Api34StartStylusHandwriting;
.super Ljava/lang/Object;
.source "InputMethodManager.android.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/text/input/internal/Api34StartStylusHandwriting;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/foundation/text/input/internal/Api34StartStylusHandwriting;

    invoke-direct {v0}, Landroidx/compose/foundation/text/input/internal/Api34StartStylusHandwriting;-><init>()V

    sput-object v0, Landroidx/compose/foundation/text/input/internal/Api34StartStylusHandwriting;->INSTANCE:Landroidx/compose/foundation/text/input/internal/Api34StartStylusHandwriting;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final startStylusHandwriting(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V
    .locals 0

    .line 110
    invoke-virtual {p1, p2}, Landroid/view/inputmethod/InputMethodManager;->startStylusHandwriting(Landroid/view/View;)V

    return-void
.end method
