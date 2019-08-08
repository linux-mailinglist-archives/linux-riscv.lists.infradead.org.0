Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD8B85F61
	for <lists+linux-riscv@lfdr.de>; Thu,  8 Aug 2019 12:17:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=icpc5yp29plcTvHq2hzDLPf/hXbeoudUwCpo86ucGWA=; b=g7kDRJQzFQSNeM
	MHygg8keu6smhgIyEcC2cv7A1tZ9Kqe3yYOLqN00VVtmEL6XBDcsue/jd+FJvd41tvg0trm/bIYGC
	DXf6Xze9T2aBQrQWCiLCnqM/R3wrPH60+0V92Ta6kbyAAk03Ronx9ZXabKAe0vnmcOiuJY0Xs47N6
	UVr6Kh6dd+biorpQIetC2ZC13LYe+EtDNIHXUCkmMOcCjFG0hrMJ30tTVI97WZ2cfbz8hAYESZHV7
	9/jsBqpvFb54ZXemi8f3omiOtYvRAIJpv3IUHFbFa5dbKaEo4Xog/KaOxwszYgVa8GqPeLqfiQTHn
	CiRhC1I+nFSFATiV2G4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvfUV-00060O-Re; Thu, 08 Aug 2019 10:17:52 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvfUL-0005uE-Q1
 for linux-riscv@lists.infradead.org; Thu, 08 Aug 2019 10:17:45 +0000
Received: by mail-wm1-x341.google.com with SMTP id u25so1827362wmc.4
 for <linux-riscv@lists.infradead.org>; Thu, 08 Aug 2019 03:17:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=A67o93psY5B4eG+Z4gU8la/fXN6tQo4s6p40YcJCO2U=;
 b=c5eSw44burssOoFTN87qDDMEdKZYrxwitEzxmyGA+TClM4eL4j+U2vXkjSTWDg78k1
 4kO3ET7xFc8yUFVM7rZOGGN+EW6e4ck/BVDqAy2QpDcxx6oeLpxjy6cbgbj0MGp2SY64
 +2NaQQlnir4wPwxR7Za2cb2f1wUXEU1lWS1F4Eb7TAMevbAPuLLbjR43OaeMq/nu2xqY
 aQmFBVEEUtW8leJ3J5gDUHXxCUQMiJu1q9KzyZZHxE+xD4UmHGjLlsRn+J5IPaIsa+qZ
 OjcyMc8M6S76QLrpSsUg7Qa/rZCiVdgE8kuYxBeboEovW8RDtrByc9ttnnVluXFwltuq
 B8zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=A67o93psY5B4eG+Z4gU8la/fXN6tQo4s6p40YcJCO2U=;
 b=RoBzRFSlXwimNbAp1onLaFqFacCn4Pf8asbeRSio/mvmiCvyzsob5zBONt/RKPu5Sj
 wrkk2iizPJw1jL3PrCKFa21Z+lgPRDTM1qELaQw5pkb/MFvC14227X8ZcGMvyySygZ+C
 VohsL4G0j66d1I9WJWxS/CWP9RmN5wwwaVqNqwBlstLOAu/dNlKzpmdm8+LqxC31CspH
 XkglZ0PuTmbWRXx0PLQf3u/4PeDk40BX1sV5ShrRSVZi2uhlyTXf83eWBjgKc/6IC75R
 SA7MVGgwj046TmM/+Nl99AJrd5gKQSwDS/uQiQF5Dyev4Hnr+p4tK9xGSN7nMj61RVkx
 xAew==
X-Gm-Message-State: APjAAAUxUeMjxv/q3f/Ijkp0qCbP87mlc89Xe7RLIxdtQwRnrrbuzvDc
 o9bJzRQn3zE5OimS/bGvVDCNA1maUFZgYqr3PqvuD3bw
X-Google-Smtp-Source: APXvYqz7BKIweTGD0pA249jlnSDGofQc14qRXCJ79xu+fAryKh6X3PjA3bV6mjRS8i9LvDRdKCRm8/Adrr477M76s7k=
X-Received: by 2002:a1c:3d89:: with SMTP id k131mr3238609wma.24.1565259458889; 
 Thu, 08 Aug 2019 03:17:38 -0700 (PDT)
MIME-Version: 1.0
References: <1565251121-28490-1-git-send-email-vincent.chen@sifive.com>
 <1565251121-28490-3-git-send-email-vincent.chen@sifive.com>
In-Reply-To: <1565251121-28490-3-git-send-email-vincent.chen@sifive.com>
From: Anup Patel <anup@brainfault.org>
Date: Thu, 8 Aug 2019 15:47:26 +0530
Message-ID: <CAAhSdy0+FeZecT0Xppwq+fGu-BV7dp+zY141R73=0O=khKdOKQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] riscv: Make __fstate_clean() can work correctly.
To: Vincent Chen <vincent.chen@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_031741_975885_E4FA1530 
X-CRM114-Status: GOOD (  14.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Albert Ou <aou@eecs.berkeley.edu>, Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Aug 8, 2019 at 1:30 PM Vincent Chen <vincent.chen@sifive.com> wrote:
>
> Make the __fstate_clean() function can correctly set the
> state of sstatus.FS in pt_regs to SR_FS_CLEAN.
>
> Tested on both QEMU and HiFive Unleashed using BBL + Linux.
>
> Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
> ---
>  arch/riscv/include/asm/switch_to.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/riscv/include/asm/switch_to.h b/arch/riscv/include/asm/switch_to.h
> index d5fe573..544f99a 100644
> --- a/arch/riscv/include/asm/switch_to.h
> +++ b/arch/riscv/include/asm/switch_to.h
> @@ -16,7 +16,7 @@ extern void __fstate_restore(struct task_struct *restore_from);
>
>  static inline void __fstate_clean(struct pt_regs *regs)
>  {
> -       regs->sstatus |= (regs->sstatus & ~(SR_FS)) | SR_FS_CLEAN;
> +       regs->sstatus = (regs->sstatus & ~(SR_FS)) | SR_FS_CLEAN;
>  }
>
>  static inline void fstate_off(struct task_struct *task,
> --
> 2.7.4
>

Looks good to me.

Reviewed-by: Anup Patel <anup@brainfault.org>

This should be a RC fix.

Please add "Fixes:" in your commit description and
CC stable kernel.

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
