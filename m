Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 008A9190252
	for <lists+linux-riscv@lfdr.de>; Tue, 24 Mar 2020 00:57:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ix8wgcI17GVIT6csUF0tAYBE2LaGOYJ65o4zi4Z+Z6c=; b=oOY+qjfPRQznBE
	HL/z4RFrR1O6FRbxORrVCJAY0JbVYzQvREI1KZZ0jHTJDKq0f5cKqC/4+JpFs0TIiRDVqvuUWBMri
	VAWhdvKTMbt6t/Fkpi+FzQ1acGPh2bS+MpwxwLtwAJ1G3bpyG8jj1cA9qoBmKqVH63Jbm5H9d6SzQ
	3xfl3hsZ8BBhZ6jQnIQBY1C7zGzEuwXhaCPsET91hzRhLzcR/pg9hMOH9K9SZITz2PBoSNPx4N19u
	dc2QpkpAhFldQqA6HYiIoiAnm0Wh9JGQMyno51D8drnAIEm+wp6u9n6xV5IFK7eO7y5XG3+zL9FC2
	gFRAXr4Gk0+BWP/s3wIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGWwN-0007qc-9w; Mon, 23 Mar 2020 23:57:07 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGWwB-0007cn-Qn
 for linux-riscv@lists.infradead.org; Mon, 23 Mar 2020 23:56:57 +0000
Received: by mail-ot1-x343.google.com with SMTP id s18so5833364otr.9
 for <linux-riscv@lists.infradead.org>; Mon, 23 Mar 2020 16:56:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Ix8wgcI17GVIT6csUF0tAYBE2LaGOYJ65o4zi4Z+Z6c=;
 b=cxRClrgaWN/fpDic28j6dquzcmGVw+xYCBcb9evltHJpyFpceHUzfKZJMIJhOLclFx
 Yn2A3TP5Stbe0rKKKA/IDNeP6sQu7YUUq74s5fXrAmxwnECa9lFLzGP2bXzZ2DmVKPgL
 UDLguXXmIlABThiCSt5lssfGYmuDsDVHy3ovX3K/B0/plnPrQcOqebITxOQuZ/DZffwT
 OhGqRBkkNp3UqEPletWR4FAIHWjJFvKqYVN8qCAzkXSZ9bQ7aH/jjGGf8ucrXstsZArj
 gA7y7Jxp7obe4aoMrhUye9oj3Q9UqQfJGy1EH69U31823NIqpoSP5pj6ibFOe6U4weCd
 K+uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Ix8wgcI17GVIT6csUF0tAYBE2LaGOYJ65o4zi4Z+Z6c=;
 b=Rbtkn3O+o87Yp7LsN5ih51cGrTbmH2UEW+m3oKITs2X0Voi24Bn6yxFFG8Dg03OlXj
 PsZgLGSoKjwKn+LFLiXyLHsfK60SeYx6C7xkF0x0lBXZ6YQ5PGM7FZkUbmdZwN0rgG45
 bg/fBBoP+IZ8fngITrDGs9px1PHOKJvuV5H9Caw2jJ9jzzaBEaUoiQefpQuQEPpXoDQP
 bjhGI5pBeRfUT3nSIKGv2cvI5iGcOs0eHhlvG2ceDEDSCPoXK5QT8hCW5ssVcZqHrOup
 D/3zxcK2WAeQy0cQ69Fq/A6gjfanf+8RJtH3veC16qAclwFDjXNjgpDBG7wxc8M7E8Cu
 PU/w==
X-Gm-Message-State: ANhLgQ1DgfJogCXOwtHowrmzONlCEYANFujs/liH66oBGLToK0uFltGf
 E+Vk14HHQabVi/QnkR5ECwlJFk4MUYa7CUra3/fugK58h6E=
X-Google-Smtp-Source: ADFU+vuDPdpSQy4eIZVOQE+DA/YA6x9KuEZDOGaV/GyUNXkAFHrjBMzNKJjNEWfmfUZNmYn+XKHPMpfaDEYyQ1QtrIo=
X-Received: by 2002:a05:6830:1e10:: with SMTP id
 s16mr4024265otr.33.1585007814217; 
 Mon, 23 Mar 2020 16:56:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200318220634.32100-1-mike.kravetz@oracle.com>
 <20200318220634.32100-3-mike.kravetz@oracle.com>
 <2ca058dc-47e6-1d08-154b-77d2cbe98e34@c-s.fr>
In-Reply-To: <2ca058dc-47e6-1d08-154b-77d2cbe98e34@c-s.fr>
From: Mina Almasry <almasrymina@google.com>
Date: Mon, 23 Mar 2020 16:56:43 -0700
Message-ID: <CAHS8izOeYeVi-W7z-DKw3Uv0rAqwuD1__uTr-oF6Lx=V9ekm3g@mail.gmail.com>
Subject: Re: [PATCH 2/4] hugetlbfs: move hugepagesz= parsing to arch
 independent code
To: Christophe Leroy <christophe.leroy@c-s.fr>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_165655_896810_5EB4A737 
X-CRM114-Status: GOOD (  18.54  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: linux-doc@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Linux-MM <linux-mm@kvack.org>,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 linux-s390@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Longpeng <longpeng2@huawei.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Vasily Gorbik <gor@linux.ibm.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 open list <linux-kernel@vger.kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S . Miller" <davem@davemloft.net>,
 Mike Kravetz <mike.kravetz@oracle.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Mar 19, 2020 at 12:04 AM Christophe Leroy
<christophe.leroy@c-s.fr> wrote:
>
>
>
> Le 18/03/2020 =C3=A0 23:06, Mike Kravetz a =C3=A9crit :
> > Now that architectures provide arch_hugetlb_valid_size(), parsing
> > of "hugepagesz=3D" can be done in architecture independent code.
> > Create a single routine to handle hugepagesz=3D parsing and remove
> > all arch specific routines.  We can also remove the interface
> > hugetlb_bad_size() as this is no longer used outside arch independent
> > code.
> >
> > This also provides consistent behavior of hugetlbfs command line
> > options.  The hugepagesz=3D option should only be specified once for
> > a specific size, but some architectures allow multiple instances.
> > This appears to be more of an oversight when code was added by some
> > architectures to set up ALL huge pages sizes.
> >
> > Signed-off-by: Mike Kravetz <mike.kravetz@oracle.com>
> > ---
> >   arch/arm64/mm/hugetlbpage.c   | 15 ---------------
> >   arch/powerpc/mm/hugetlbpage.c | 15 ---------------
> >   arch/riscv/mm/hugetlbpage.c   | 16 ----------------
> >   arch/s390/mm/hugetlbpage.c    | 18 ------------------
> >   arch/sparc/mm/init_64.c       | 22 ----------------------
> >   arch/x86/mm/hugetlbpage.c     | 16 ----------------
> >   include/linux/hugetlb.h       |  1 -
> >   mm/hugetlb.c                  | 24 ++++++++++++++++++------
> >   8 files changed, 18 insertions(+), 109 deletions(-)
> >
>
> [snip]
>
> > diff --git a/mm/hugetlb.c b/mm/hugetlb.c
> > index 2f99359b93af..cd4ec07080fb 100644
> > --- a/mm/hugetlb.c
> > +++ b/mm/hugetlb.c
> > @@ -3149,12 +3149,6 @@ static int __init hugetlb_init(void)
> >   }
> >   subsys_initcall(hugetlb_init);
> >
> > -/* Should be called on processing a hugepagesz=3D... option */
> > -void __init hugetlb_bad_size(void)
> > -{
> > -     parsed_valid_hugepagesz =3D false;
> > -}
> > -
> >   void __init hugetlb_add_hstate(unsigned int order)
> >   {
> >       struct hstate *h;
> > @@ -3224,6 +3218,24 @@ static int __init hugetlb_nrpages_setup(char *s)
> >   }
> >   __setup("hugepages=3D", hugetlb_nrpages_setup);
> >
> > +static int __init hugepagesz_setup(char *s)
> > +{
> > +     unsigned long long size;
> > +     char *saved_s =3D s;
> > +
> > +     size =3D memparse(s, &s);
>
> You don't use s after that, so you can pass NULL instead of &s and avoid
> the saved_s
>

+1

Acked-by: Mina Almasry <almasrymina@google.com>

