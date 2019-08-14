Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8C78C5B6
	for <lists+linux-riscv@lfdr.de>; Wed, 14 Aug 2019 03:55:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9wA0dH7FdJ1cAwp0sLwReKglnDFpQfwHFgAnEln0XtU=; b=iXtBJ7ubp56q6s
	oX/oD2eeOsej3WUNdJES7HI/ZdxvAzbD6Hwyg2D33zJwOPFSgp50g7oj4TifHciAcYc57XBS1jcdG
	O6wV5v02kX2HLDdiURBAyvzEc+LohYfLpPiZWpAJhIdoCLRZhd5BP5tkleuWM4mq5jNGaGyM7Q+pQ
	pT17+3M2i0zToT6L93cROtwJJ+OOHCdYzppS3uPzi/qfGdRaMV65lUrLcqzSFz5MdLOIgAtss1eA1
	oggz6DLpAiNiTCDj9m2C32BjbV4jxXOmOz0xjXOIMZcaXGB9whED2NIHxR7xb9mcpRiGJgsZAq0yJ
	8/WmMVs4XU8d3zV4sZjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxiVS-0002fp-IG; Wed, 14 Aug 2019 01:55:18 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxiVM-0002ex-Fh
 for linux-riscv@lists.infradead.org; Wed, 14 Aug 2019 01:55:14 +0000
Received: by mail-oi1-x244.google.com with SMTP id c15so15309115oic.3
 for <linux-riscv@lists.infradead.org>; Tue, 13 Aug 2019 18:55:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FvZgcIP+Jz1WkFSRFJD+95uSrVx6pGRMAeYWt8sXANU=;
 b=nR8gnnyZRdfRZx9cim3gfa/2rzzlVipxp14EzBfCKecBs0Grr6AFbJafklNapdif5f
 hIoqsk+mTRXFf2UXw6qFcPGpXgmVPO4J+U8Jlz/+s0IYqRxh35OzmQTs1c3bH4FlY3mn
 SAznTDtZCGVgQPKfZJbkr3R4/5cXJl8xvZcp4CLm8hfEBpeyo+EFw02RbVD/8X9yHl6l
 FHTEt0T2pOHo9b+Tfjn4+a1y152LDTnUVEGuo045KlpJ/J1fRKThlyJfhT/VplY6L4pU
 vec0pNhtcH6/6ADhfcjcsDcXXUgeT/0pG89j+VaJed4xyrxDSxLp8f4DSDjEHUIsumT7
 MnZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FvZgcIP+Jz1WkFSRFJD+95uSrVx6pGRMAeYWt8sXANU=;
 b=IYrHuT7C219Rs+T7woBDuzrjgytotHjqye71sg1RanllnOaYFNjEgU8UbXCBq1VD+y
 A0WOoMUbH4VVKh0y6zCoWHo8BJA6btxPIlY9u6VwriIgLLc0ARPOEUxG+2R1XF5qJk7H
 v7AWhCA7i/UG8wdW5Mo9myEFBNjcEQzKswfUHD6OtBZkmSEguk+lQ9CsfkJUWbEqNtZI
 Kq/1LsskX0ZgRHNzXNwTan4IDLCppB8oAn9Wnm3agfvvc/JC1m1mt0/M8DR5rIWQRZlt
 Pvbd13M4aCxAQy4bl2eHloUuvbpSawWVC025K/KmOB/DKHmLiZyqvF24lBcuStJzQODq
 AEiA==
X-Gm-Message-State: APjAAAVky0wIcP7G9Ax/l0h+IKrDnaQ9itGlLZ9f1yrhZyWhugLcMIMU
 YquPCZYb/wB4BWI//2lMd59WeVb+iVa52rTjVaNIIw==
X-Google-Smtp-Source: APXvYqxabDnVCz5t3YGwHj4Wajl2jkHY57yV8V5il3H+b7zJluu8RtF0b2vDXOPUfLIYaCxMg97I5SrxEqwI/LjsarI=
X-Received: by 2002:a02:c65a:: with SMTP id k26mr889740jan.18.1565747711676;
 Tue, 13 Aug 2019 18:55:11 -0700 (PDT)
MIME-Version: 1.0
References: <1565251121-28490-1-git-send-email-vincent.chen@sifive.com>
 <1565251121-28490-3-git-send-email-vincent.chen@sifive.com>
 <CAAhSdy0+FeZecT0Xppwq+fGu-BV7dp+zY141R73=0O=khKdOKQ@mail.gmail.com>
In-Reply-To: <CAAhSdy0+FeZecT0Xppwq+fGu-BV7dp+zY141R73=0O=khKdOKQ@mail.gmail.com>
From: Vincent Chen <vincent.chen@sifive.com>
Date: Wed, 14 Aug 2019 09:55:00 +0800
Message-ID: <CABvJ_xjvot3xuHrbmV01hzejx7y6ty2Oy-BNLRfa=Fq4=u3dFA@mail.gmail.com>
Subject: Re: [PATCH 2/2] riscv: Make __fstate_clean() can work correctly.
To: Anup Patel <anup@brainfault.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_185512_624947_A5E8C58A 
X-CRM114-Status: GOOD (  15.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Thu, Aug 8, 2019 at 6:17 PM Anup Patel <anup@brainfault.org> wrote:
>
> On Thu, Aug 8, 2019 at 1:30 PM Vincent Chen <vincent.chen@sifive.com> wrote:
> >
> > Make the __fstate_clean() function can correctly set the
> > state of sstatus.FS in pt_regs to SR_FS_CLEAN.
> >
> > Tested on both QEMU and HiFive Unleashed using BBL + Linux.
> >
> > Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
> > ---
> >  arch/riscv/include/asm/switch_to.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/riscv/include/asm/switch_to.h b/arch/riscv/include/asm/switch_to.h
> > index d5fe573..544f99a 100644
> > --- a/arch/riscv/include/asm/switch_to.h
> > +++ b/arch/riscv/include/asm/switch_to.h
> > @@ -16,7 +16,7 @@ extern void __fstate_restore(struct task_struct *restore_from);
> >
> >  static inline void __fstate_clean(struct pt_regs *regs)
> >  {
> > -       regs->sstatus |= (regs->sstatus & ~(SR_FS)) | SR_FS_CLEAN;
> > +       regs->sstatus = (regs->sstatus & ~(SR_FS)) | SR_FS_CLEAN;
> >  }
> >
> >  static inline void fstate_off(struct task_struct *task,
> > --
> > 2.7.4
> >
>
> Looks good to me.
>
> Reviewed-by: Anup Patel <anup@brainfault.org>
>
> This should be a RC fix.
>
> Please add "Fixes:" in your commit description and
> CC stable kernel.
>
OK, I will follow your suggestions and resend this patch
Thanks for your comments.

Regards,
Vincent Chen

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
