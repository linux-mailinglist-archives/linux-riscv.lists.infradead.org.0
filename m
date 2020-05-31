Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 787411E94EE
	for <lists+linux-riscv@lfdr.de>; Sun, 31 May 2020 03:56:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4l38koLnhzyQ4ndkN0TUtPQ4teOjqIMakPsvgnmVO5U=; b=lKKXC00TAm2ArzQKbtbjYiAYy
	QZznRy7auEvLVK6RauVz3t94x2UshhxcfHlpMcJd+jv3MobkU85Y6Ss9+wKqDDydFlpnG34e/rI58
	zNTzovkGnl4elSW7843XXk/6MWilTCT1r/ynDXzQPocCdYlp9DcH2TYY+SUSgMM8sbCk/hqjz85sd
	TRASWddf4G4M+AIlBegDVNVkaqphDZYbx25V4S8hggX3iLZ+vcP/eewyUFmAMv2nJ9Fbmp9B9dfZm
	MbwoJXo2yiTRAwKIpR7Ed5j1T47xQY4gJQJrBwfajm0k4JDfUfTymCXhs55f3ymCAikvQYqgtWVSv
	iW/BWSHvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfDDO-00040e-O3; Sun, 31 May 2020 01:56:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfDDL-00040I-0L
 for linux-riscv@lists.infradead.org; Sun, 31 May 2020 01:56:40 +0000
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com
 [209.85.167.54])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D3E73207DF
 for <linux-riscv@lists.infradead.org>; Sun, 31 May 2020 01:56:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590890198;
 bh=aV7Yv2k4mvodEUB9KbV6pGSLhLcWgkbn0lTY/BBREVk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=zjkQad076gevko7EXf7J/BHhctHOSkrzb1I5EtvWrEIi+qLxpO4iF5ouDE+/HROLh
 QePnLWoyADhuFORb4RhxmsrL/bTV7eph1Bd/315DvGfSNTxTznZ2/N0RxXr8PzzNLO
 APxvUPK/iiIXng6H5N/U8vk5sG7corvWzB7AFnFc=
Received: by mail-lf1-f54.google.com with SMTP id z206so1917818lfc.6
 for <linux-riscv@lists.infradead.org>; Sat, 30 May 2020 18:56:37 -0700 (PDT)
X-Gm-Message-State: AOAM5305uJoEClFy3p4HWYxM0mdYNcKrfi8ImK+zgIaLSRw7DBGz9EIO
 Qrum5XxtOZUIqo5xlc3x2n/K1DLPNP9B+FLXc2E=
X-Google-Smtp-Source: ABdhPJwHNdagqFyLRCjUuwXRrjjZ5K9b6OQEZPVGRzzRKra0hLRV9+eJ+7l8PkMtyn2Csl/7CaUuJ4aI9bOztFfghjA=
X-Received: by 2002:a05:6512:3291:: with SMTP id
 p17mr7856343lfe.41.1590890196106; 
 Sat, 30 May 2020 18:56:36 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1590474856.git.greentime.hu@sifive.com>
 <fe966314eae51a5089033f7186ac86c39719e0a0.1590474856.git.greentime.hu@sifive.com>
In-Reply-To: <fe966314eae51a5089033f7186ac86c39719e0a0.1590474856.git.greentime.hu@sifive.com>
From: Guo Ren <guoren@kernel.org>
Date: Sun, 31 May 2020 09:56:24 +0800
X-Gmail-Original-Message-ID: <CAJF2gTTnLNmNUvDwRSsmD9auaOGuqYXjuucKSyXZQKoEWEq4Ow@mail.gmail.com>
Message-ID: <CAJF2gTTnLNmNUvDwRSsmD9auaOGuqYXjuucKSyXZQKoEWEq4Ow@mail.gmail.com>
Subject: Re: [RFC PATCH v4 05/13] riscv: Add new csr defines related to vector
 extension
To: Greentime Hu <greentime.hu@sifive.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_185639_088297_7168BC69 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Guo Ren <guoren@linux.alibaba.com>, palmerdabbelt@google.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, oleg@redhat.com,
 Vincent Chen <vincent.chen@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Greentime,

Why remove vxrm and xstat ?

> Appendix B: Calling Convention
> In the RISC-V psABI, the vector registers v0-v31 are all caller-saved. The vstart, vl, and vtype CSRs are also caller-saved.
> The vxrm and vxsat fields have thread storage duration.

As spec 0.9 mentioned above, vxrm and vxsat are thread storage duration.

When timer 's interrupt coming, we still need to save them in context_switch.

On Tue, May 26, 2020 at 3:03 PM Greentime Hu <greentime.hu@sifive.com> wrote:
>
> From: Guo Ren <guoren@linux.alibaba.com>
>
> Follow the riscv vector spec to add new csr number.
>
> [greentime.hu@sifive.com: update the defined value based on new spec and
> remove unused ones]
> Signed-off-by: Greentime Hu <greentime.hu@sifive.com>
> Signed-off-by: Guo Ren <guoren@linux.alibaba.com>
> ---
>  arch/riscv/include/asm/csr.h | 16 ++++++++++++++--
>  1 file changed, 14 insertions(+), 2 deletions(-)
>
> diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
> index 8e18d2c64399..cc13626c4bbe 100644
> --- a/arch/riscv/include/asm/csr.h
> +++ b/arch/riscv/include/asm/csr.h
> @@ -24,6 +24,12 @@
>  #define SR_FS_CLEAN    _AC(0x00004000, UL)
>  #define SR_FS_DIRTY    _AC(0x00006000, UL)
>
> +#define SR_VS           _AC(0x00000600, UL) /* Vector Status */
> +#define SR_VS_OFF       _AC(0x00000000, UL)
> +#define SR_VS_INITIAL   _AC(0x00000200, UL)
> +#define SR_VS_CLEAN     _AC(0x00000400, UL)
> +#define SR_VS_DIRTY     _AC(0x00000600, UL)
> +
>  #define SR_XS          _AC(0x00018000, UL) /* Extension Status */
>  #define SR_XS_OFF      _AC(0x00000000, UL)
>  #define SR_XS_INITIAL  _AC(0x00008000, UL)
> @@ -31,9 +37,9 @@
>  #define SR_XS_DIRTY    _AC(0x00018000, UL)
>
>  #ifndef CONFIG_64BIT
> -#define SR_SD          _AC(0x80000000, UL) /* FS/XS dirty */
> +#define SR_SD          _AC(0x80000000, UL) /* FS/VS/XS dirty */
>  #else
> -#define SR_SD          _AC(0x8000000000000000, UL) /* FS/XS dirty */
> +#define SR_SD          _AC(0x8000000000000000, UL) /* FS/VS/XS dirty */
>  #endif
>
>  /* SATP flags */
> @@ -114,6 +120,12 @@
>  #define CSR_PMPADDR0           0x3b0
>  #define CSR_MHARTID            0xf14
>
> +#define CSR_VSTART             0x8
> +#define CSR_VCSR               0xf
> +#define CSR_VL                 0xc20
> +#define CSR_VTYPE              0xc21
> +#define CSR_VLENB              0xc22
> +
>  #ifdef CONFIG_RISCV_M_MODE
>  # define CSR_STATUS    CSR_MSTATUS
>  # define CSR_IE                CSR_MIE
> --
> 2.26.2
>
>


--
Best Regards
 Guo Ren

ML: https://lore.kernel.org/linux-csky/

