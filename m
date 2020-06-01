Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C87271E9FDF
	for <lists+linux-riscv@lfdr.de>; Mon,  1 Jun 2020 10:15:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sk/qZ0PCKuKPpHB9HjPSmK4jmV57qb64kZf7c48kCF0=; b=bq+P1mmitcWIZi
	0b4FSFBJEh9Tl6gaR44jzDs/0GvTmJ+EAPUK0KfwyxPF+D2DRg34UEgi1+hLuxdhf+yvufW1I5bEW
	TOMhfKbbWKh0eWkg44el/nAsXiRR4kyQFhdCNSh8ZFgOd9717q89AABQ/JYdaCnY5wZvxVqqGpEk6
	oFlu9iCk44hvGQ0Bg+FWNWINbViguOXSGGmugueRxcV305ykbua25b93+l7apKtV4upFuNQ+k9/Op
	hwAwFJ04eWiL3bx/FJYcHxo3iiSjuK5//lk8mfn+ukD69wKzZYo5n6xGwzrSvhlJ5owHoSwuk87p5
	VxpMdkgIEWTutj9Z8RCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jffbX-0000vB-LX; Mon, 01 Jun 2020 08:15:31 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jffbT-0000ul-UL
 for linux-riscv@lists.infradead.org; Mon, 01 Jun 2020 08:15:29 +0000
Received: by mail-qk1-x743.google.com with SMTP id q8so8231903qkm.12
 for <linux-riscv@lists.infradead.org>; Mon, 01 Jun 2020 01:15:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Sk/qZ0PCKuKPpHB9HjPSmK4jmV57qb64kZf7c48kCF0=;
 b=OkUxzICYBcJ/T23uVyaiKrQRWk4oQTuGUExzoH9tTvqqLd0WJYCUcoC+rEJ5TNqtcr
 W3L5Vtj+3omzytqwnni8m1uWnj3zsYpe1gbZ6XAObufDkgRtCeV25VbM3ia2SYvculyS
 0TZPqrYBhiSe0144ZS6jiCqOJtQQgT7B7TJFwYMqlFTPNMi7ze84O3hmXePGKuyQUqtc
 f+SP+b0/mYsZn6l4tF4VCwwlgUEEc8Yz5srZhVCu8VQJv7aNVVYritdidqgQSGEIjhTS
 hfWQBK3AVgEGmNLNk6wyEla/z/nZ/0I1Z8VnzEOUHxOZRWWyqvgAFtSO/Cd/E5O4B35C
 hfEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Sk/qZ0PCKuKPpHB9HjPSmK4jmV57qb64kZf7c48kCF0=;
 b=O3auvscMKSwU0UZDl0H4wvhnPhD9f0asZMZX/T9ewOL6EMEoXcwkUzF1fBTIbjHxh6
 15Hq+uNyTspxLKIGR8vcNZrrDVZR6Nm8QC42Yrq0g4VV/KJGoy1CaKJ8irK6ALYdWpR+
 +SR9OmpKUvx94AJOMett4gTEE8/yFpJ1FPCoG/V0yOyZ1OceFzujTfQ/aaCexzdaixrh
 cU17WcAAG8Els/26YkdIhqeDzZVn6yOUwaXHezU1dHenekFYVmGF0qjEKQpQqytgtyKp
 o9coWGStnGfC+SnEfxH2obqc2YgmS4QhMS9zSbjrkbpotksa3kLX2m1+aODbr6A0MEn1
 MIgA==
X-Gm-Message-State: AOAM5321ZNOW+ehmmEuObF/hkIT//PeZQx3Ge17B+SEDVkUIehix1yjf
 X0dkmtOkeB8EPJRYlxdbeUpOp/q7NmD5UvbZHLMsnw==
X-Google-Smtp-Source: ABdhPJwAZIYguqwZTxoHINg27uUeFDW9ssNvRHKAZfR70FyR5LAn3osu3KVqu7LBFqe+vVsr5skBCE0r7JFHOmVIU50=
X-Received: by 2002:a37:9bd7:: with SMTP id
 d206mr19591161qke.113.1590999326270; 
 Mon, 01 Jun 2020 01:15:26 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1590474856.git.greentime.hu@sifive.com>
 <fe966314eae51a5089033f7186ac86c39719e0a0.1590474856.git.greentime.hu@sifive.com>
 <CAJF2gTTnLNmNUvDwRSsmD9auaOGuqYXjuucKSyXZQKoEWEq4Ow@mail.gmail.com>
In-Reply-To: <CAJF2gTTnLNmNUvDwRSsmD9auaOGuqYXjuucKSyXZQKoEWEq4Ow@mail.gmail.com>
From: Greentime Hu <greentime.hu@sifive.com>
Date: Mon, 1 Jun 2020 16:15:14 +0800
Message-ID: <CAHCEeh+d+ya6+Xrh8hdWVSGo2kk_rZ8PV2eMM-2LLaOojAaBtQ@mail.gmail.com>
Subject: Re: [RFC PATCH v4 05/13] riscv: Add new csr defines related to vector
 extension
To: Guo Ren <guoren@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_011528_010943_9F91C573 
X-CRM114-Status: GOOD (  14.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Guo Ren <guoren@linux.alibaba.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, Vincent Chen <vincent.chen@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Guo Ren <guoren@kernel.org> =E6=96=BC 2020=E5=B9=B45=E6=9C=8831=E6=97=A5 =
=E9=80=B1=E6=97=A5 =E4=B8=8A=E5=8D=889:56=E5=AF=AB=E9=81=93=EF=BC=9A
>
> Hi Greentime,
>
> Why remove vxrm and xstat ?
>
> > Appendix B: Calling Convention
> > In the RISC-V psABI, the vector registers v0-v31 are all caller-saved. =
The vstart, vl, and vtype CSRs are also caller-saved.
> > The vxrm and vxsat fields have thread storage duration.
>
Hi Guo,

https://github.com/riscv/riscv-v-spec/blob/master/v-spec.adoc#vector-contro=
l-and-status-register-vcsr
"The vxrm and vxsat separate CSRs can also be accessed via fields in
the vector control and status CSR, vcsr."

Since vcsr will save all these information, I think it should be ok to
save vcsr only.

> As spec 0.9 mentioned above, vxrm and vxsat are thread storage duration.
>
> When timer 's interrupt coming, we still need to save them in context_swi=
tch.
>
> On Tue, May 26, 2020 at 3:03 PM Greentime Hu <greentime.hu@sifive.com> wr=
ote:
> >
> > From: Guo Ren <guoren@linux.alibaba.com>
> >
> > Follow the riscv vector spec to add new csr number.
> >
> > [greentime.hu@sifive.com: update the defined value based on new spec an=
d
> > remove unused ones]
> > Signed-off-by: Greentime Hu <greentime.hu@sifive.com>
> > Signed-off-by: Guo Ren <guoren@linux.alibaba.com>
> > ---
> >  arch/riscv/include/asm/csr.h | 16 ++++++++++++++--
> >  1 file changed, 14 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.=
h
> > index 8e18d2c64399..cc13626c4bbe 100644
> > --- a/arch/riscv/include/asm/csr.h
> > +++ b/arch/riscv/include/asm/csr.h
> > @@ -24,6 +24,12 @@
> >  #define SR_FS_CLEAN    _AC(0x00004000, UL)
> >  #define SR_FS_DIRTY    _AC(0x00006000, UL)
> >
> > +#define SR_VS           _AC(0x00000600, UL) /* Vector Status */
> > +#define SR_VS_OFF       _AC(0x00000000, UL)
> > +#define SR_VS_INITIAL   _AC(0x00000200, UL)
> > +#define SR_VS_CLEAN     _AC(0x00000400, UL)
> > +#define SR_VS_DIRTY     _AC(0x00000600, UL)
> > +
> >  #define SR_XS          _AC(0x00018000, UL) /* Extension Status */
> >  #define SR_XS_OFF      _AC(0x00000000, UL)
> >  #define SR_XS_INITIAL  _AC(0x00008000, UL)
> > @@ -31,9 +37,9 @@
> >  #define SR_XS_DIRTY    _AC(0x00018000, UL)
> >
> >  #ifndef CONFIG_64BIT
> > -#define SR_SD          _AC(0x80000000, UL) /* FS/XS dirty */
> > +#define SR_SD          _AC(0x80000000, UL) /* FS/VS/XS dirty */
> >  #else
> > -#define SR_SD          _AC(0x8000000000000000, UL) /* FS/XS dirty */
> > +#define SR_SD          _AC(0x8000000000000000, UL) /* FS/VS/XS dirty *=
/
> >  #endif
> >
> >  /* SATP flags */
> > @@ -114,6 +120,12 @@
> >  #define CSR_PMPADDR0           0x3b0
> >  #define CSR_MHARTID            0xf14
> >
> > +#define CSR_VSTART             0x8
> > +#define CSR_VCSR               0xf
> > +#define CSR_VL                 0xc20
> > +#define CSR_VTYPE              0xc21
> > +#define CSR_VLENB              0xc22
> > +
> >  #ifdef CONFIG_RISCV_M_MODE
> >  # define CSR_STATUS    CSR_MSTATUS
> >  # define CSR_IE                CSR_MIE
> > --
> > 2.26.2
> >
> >
>
>
> --
> Best Regards
>  Guo Ren
>
> ML: https://lore.kernel.org/linux-csky/

