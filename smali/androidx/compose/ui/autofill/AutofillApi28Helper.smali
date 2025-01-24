.class public final Landroidx/compose/ui/autofill/AutofillApi28Helper;
.super Ljava/lang/Object;
.source "AutofillUtils.android.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/autofill/AutofillApi28Helper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/autofill/AutofillApi28Helper;

    invoke-direct {v0}, Landroidx/compose/ui/autofill/AutofillApi28Helper;-><init>()V

    sput-object v0, Landroidx/compose/ui/autofill/AutofillApi28Helper;->INSTANCE:Landroidx/compose/ui/autofill/AutofillApi28Helper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setMaxTextLength(Landroid/view/ViewStructure;I)V
    .locals 0

    .line 36
    invoke-virtual {p1, p2}, Landroid/view/ViewStructure;->setMaxTextLength(I)V

    return-void
.end method
