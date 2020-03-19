Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8748518AAD2
	for <lists+linux-riscv@lfdr.de>; Thu, 19 Mar 2020 03:45:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+rrSuZT6uDtnxtSd570ZYHkEiirJpqLxSZDXE48kUqU=; b=aF0dq4g1z1aCAygJdeEEg5iBp
	qIgkvocmyxBvy9u2sEfB8iixIZrYmXZe9XcMdRnUwLLMANmkueIW3jB7KQW+LypIUYOaNJlWR4K96
	7zxupfDtPhZUjZN3d3qLcR137CsSTOItbauBJy0Tn4yH+0DXRrjOluIuiNAd9QfFZ71s+Y7xwlKhD
	ZUIsC+UWk0ZMfY6+o+7gY7luUaw0te31l48VV30DFFTqWWM8KPycvFaEWo81io0Vn2UcgYlYw+iCB
	0aQyxrdI9wCqFDknO7mr2nb89J4uAblSbPQuZAJq5QV39ptajkvYp0kshDNWQEtLetIYZMRICd4qR
	cnBbcwsBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jElBu-0003Pr-Dt; Thu, 19 Mar 2020 02:45:50 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jElBq-0003PW-4L
 for linux-riscv@lists.infradead.org; Thu, 19 Mar 2020 02:45:47 +0000
Received: by mail-qk1-x742.google.com with SMTP id e11so922147qkg.9
 for <linux-riscv@lists.infradead.org>; Wed, 18 Mar 2020 19:45:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+rrSuZT6uDtnxtSd570ZYHkEiirJpqLxSZDXE48kUqU=;
 b=Z74OKFW/reg5xgrgKIzEmw71MDucTAlUlZ68tE1D0Fpnyl2OVajZsU75zI8Tl3BbuC
 ixtLaKFDeIrzdRs7nAV1Mr3A6THDp2IO1H8EFb5kDmM8BFoI6HYSoIRJB02TQWr2nt5w
 xbwmfKxvG1U2DJ0qzyxz62NtAR5rWxRb7fFLt8+EZtEbaIS7Uae+AW/XsgyPiAFX8518
 El8Pp4ZU352PKy0zDRPuZLgbyd7BcTSMdI2iuhmfW6g2f5vBqDf7Y6ps1WR4/6HJ5w8Y
 hqYDNKqpYAiLAnBnyNKpuYSy4b/WG1LnzjjwdpbWK4TBhUkaUg8v0nnSRunBlAkFiSB9
 aPqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+rrSuZT6uDtnxtSd570ZYHkEiirJpqLxSZDXE48kUqU=;
 b=o//BPeUM2RxUVTAWZG1dyRdDGLEiwtfMuhShg/vTOYVA6bPOVtNpsk+2rDpNCvfUpb
 w21ScWPMDbjb4PmPBv0D2czmnuZzFaC/79B0Rs4vgaAfPU55QhMod198Sa5FfEh6dsP1
 jRI1H2Fn7QkctjnKjM3gIdpWeZ5wdQI795iAn+jbA4JmelUkdJyBrv3QxTV/S2wf1v08
 ANIp8neBAc/kai9Te0mNSsD8RthUockt0oftU3THdjFMPzEbIguJdBQWT9x5nTq2SXSS
 opkETaVbrnumh4r3GPfsr27PXPrVoj3eARMbgwvcJi2Le+np6ReBr8PLPU9Dp47gwhhu
 BxXw==
X-Gm-Message-State: ANhLgQ0RIqn5jb//IwJfQ6xHNTtPGbOcQWl0AlYH3bYm5EwNq7Dr103y
 kcMgwp/2LhAquA6hcpZOMMiroWj6+Q55ZjqweAY7tQ==
X-Google-Smtp-Source: ADFU+vv9CR8xJV3Q+g7ALLNEUb97ush2kfksZVgayCZBNTut9eSgNcR+mZT/frB1Ta0Pmh8fTiI4Q3TEwpBYr4FFP74=
X-Received: by 2002:a37:b5c7:: with SMTP id e190mr923993qkf.397.1584585944494; 
 Wed, 18 Mar 2020 19:45:44 -0700 (PDT)
MIME-Version: 1.0
References: <1583225263-26245-1-git-send-email-vincent.chen@sifive.com>
 <mhng-7036b146-b12d-4a59-8289-a65c50e1112c@palmerdabbelt-glaptop1>
In-Reply-To: <mhng-7036b146-b12d-4a59-8289-a65c50e1112c@palmerdabbelt-glaptop1>
From: Vincent Chen <vincent.chen@sifive.com>
Date: Thu, 19 Mar 2020 10:45:33 +0800
Message-ID: <CABvJ_xhZ+bDogceusXfRXWupFJEboXV_=fNTcTPiMKkeo0cjGA@mail.gmail.com>
Subject: Re: [PATCH 3/5] kgdb: enable arch to handle more query packets
To: Palmer Dabbelt <palmer@dabbelt.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_194546_203897_D596C839 
X-CRM114-Status: GOOD (  18.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Daniel Thompson <daniel.thompson@linaro.org>, jason.wessel@windriver.com,
 Douglas Anderson <dianders@chromium.org>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Mar 19, 2020 at 6:32 AM Palmer Dabbelt <palmer@dabbelt.com> wrote:
>
> On Tue, 03 Mar 2020 00:47:43 PST (-0800), vincent.chen@sifive.com wrote:
> > KGDB only supports parts of GDB query packets. Add
> > kgdb_arch_cmd_query() hook function to enable arch to handle
> > more query packets such as the qSupported packet.
> >
> > Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
> > ---
> >  include/linux/kgdb.h   | 10 ++++++++++
> >  kernel/debug/gdbstub.c |  6 ++++++
> >  2 files changed, 16 insertions(+)
> >
> > diff --git a/include/linux/kgdb.h b/include/linux/kgdb.h
> > index b072aeb1fd78..bbb35557f76d 100644
> > --- a/include/linux/kgdb.h
> > +++ b/include/linux/kgdb.h
> > @@ -177,6 +177,16 @@ kgdb_arch_handle_exception(int vector, int signo, int err_code,
> >                          struct pt_regs *regs);
> >
> >  /**
> > + *   kgdb_arch_handle_exception - Handle architecture specific query packet.
> > + *   @remcom_in_buffer: The buffer of the packet we have read.
> > + *   @remcom_out_buffer: The buffer of %BUFMAX bytes to write a packet into.
> > + */
> > +
> > +extern void
> > +kgdb_arch_cmd_query(char *remcom_in_buffer,
> > +                 char *remcom_out_buffer);
> > +
> > +/**
> >   *   kgdb_call_nmi_hook - Call kgdb_nmicallback() on the current CPU
> >   *   @ignored: This parameter is only here to match the prototype.
> >   *
> > diff --git a/kernel/debug/gdbstub.c b/kernel/debug/gdbstub.c
> > index 4b280fc7dd67..2b2e7b99edcc 100644
> > --- a/kernel/debug/gdbstub.c
> > +++ b/kernel/debug/gdbstub.c
> > @@ -694,6 +694,9 @@ static int gdb_cmd_reboot(struct kgdb_state *ks)
> >       return 0;
> >  }
> >
> > +void __weak kgdb_arch_cmd_query(char *remcom_in_buffer,
> > +                             char *remcom_out_buffer);
> > +
> >  /* Handle the 'q' query packets */
> >  static void gdb_cmd_query(struct kgdb_state *ks)
> >  {
> > @@ -792,6 +795,9 @@ static void gdb_cmd_query(struct kgdb_state *ks)
> >               }
> >               break;
> >  #endif
> > +     default:
> > +             kgdb_arch_cmd_query(remcom_in_buffer, remcom_out_buffer);
> > +
> >       }
> >  }
>
> Won't this blow up on architectures that don't implement kgdb_arch_cmd_query()?
> IIRC undefined weak functions have the absolute address 0.  It's probably

Yes, you are right.
I planed to define an empty week function but I forgot to add braces
after the function prototype.
This is my mistake.

> better to avoid the __weak entirely and introduce something along the lines of
> CONFIG_ARCH_HAS_CMD_QUERY.
>
> One better: I don't think qSupported is a good example of an arch-specific
> packet -- it's probably cleaner to have the arch indicate which extra features
> it supports (presumably via Kconfig) rather than just punting on the whole
> packet.  The XML stuff is a good example: rather than putting all that in the
> RISC-V port, we could just have something like CONFIG_ACRH_SUPPORTS_GDB_XML
> which indicates XML descriptions are supported and expects a function to fill
> out the XML response.

I agree with you. I will follow your suggestion to modify it.
Thank you.

