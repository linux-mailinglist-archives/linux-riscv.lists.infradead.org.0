Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BEB61AB48E
	for <lists+linux-riscv@lfdr.de>; Thu, 16 Apr 2020 02:03:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DeDWfkYBflB6EXLJxPtKLM2FrMMRcS25RI68mbe9KPw=; b=F3CR0mFRI6b1WbMQPGmDs4Jzh
	eR/CkRkJoTc602oxkxdexACem9VQOkvExykVRtBADi913tiKRV80E8SXUQpZnFuO7/SQObbGKd8Gf
	iHPCybo1KPLjSblPx/K1aFr/eH7AWIYpSahA9uYhjXDB+p439rhj3x9xY08hfZz6ea13UFSBWZ0kU
	gnRHd4b96nq0PfEiffqt/KIA7Lz6g1n/eTP3yluDaCkKSwne3MA2/ezu9IAR6n8LguItPjkiql0qe
	NUyFOIYfiH3gHZLhWM0ML/3hEoT2Djz9SkdCos+Cym+6NTdBJ1aqTv9iFZvyESuIPbiR0YxnpBwy6
	e6Z3uVsiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOs0E-0000pc-0g; Thu, 16 Apr 2020 00:03:34 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOs09-0000om-Ja
 for linux-riscv@lists.infradead.org; Thu, 16 Apr 2020 00:03:32 +0000
Received: by mail-qk1-x744.google.com with SMTP id c63so19609114qke.2
 for <linux-riscv@lists.infradead.org>; Wed, 15 Apr 2020 17:03:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DeDWfkYBflB6EXLJxPtKLM2FrMMRcS25RI68mbe9KPw=;
 b=l35urU22FMZQ0HM6XOkqpxzd68QfnEdIKEi7UpDeYUW2DY247H0F1JnLYLxmg3FSUM
 duyXrza6Gp6snsiJqe3B/moN0POYnYyCxVqj96W8+TXfVFGNeZIIF0B0oP1l1kA+qAUc
 mTgpK00W2UuGk19QZ/21qSVA5Sn/DyJG/bnShprLXKoGeeVQg1rcCDDiU4B7N4nVnowY
 dlN5RNcLl8YlM6Fr6b40oJgTkEPMmhp/xN+ttP/8dqO7OU2rRxm2Y30u5iY9upEg3N1L
 wXigRcC4lsHqGt2ni4Y/JSAkS2POtZ+dL523gPX3vhZmcTjvxA5KwrrVm4Y7KhwL+kyI
 lQHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DeDWfkYBflB6EXLJxPtKLM2FrMMRcS25RI68mbe9KPw=;
 b=EbaKl3edwdqv3U1E0ld9KnGrz0C34qgpJkYwaocmn7SdGVIG0XwOxGtczC3Uqnuwvx
 bqCxdTH69qT0hKiFOWyVm4pchD6BR55e+hdxQWQSqwR3yshQU6Qbb0L4RkZCihQJ3XI4
 CVmISVhV8O3EfzyN5WbdtqoImFBsomfO70m0/5+3+2h2q2/YU1U5jVrLF/+Ku7k67etp
 s1eIelxwSwipXlkQO/BOTsuUaxhqtXvxlQRobVIUrwJWHuht2lkjVdZd4Dohp5nS+K7s
 JbOl1bgP9MCnLZ8UpIg8aO3pejhtVZTCStje8RJfCe6QndZ5ELsvNb8MB3aF8hdq4wOr
 caJA==
X-Gm-Message-State: AGi0Pubje9P9Ir0YlIatA9/dy+WRJbWsH2VsrdCElkKLeJP5iemeJ1fG
 fHBUlY5ar2Q5CdIa8p5Ey2ThjT/Ih1adCjioUtDbdw==
X-Google-Smtp-Source: APiQypKY8tr4yYKOvf94GnH3KYP//9YRmVwQ/2pLwanpPLlgBZGm+Wyu1LqPbfuD3MDvkoJvcA0XJHRgqH6GnjGHMzM=
X-Received: by 2002:a05:620a:1189:: with SMTP id
 b9mr28061823qkk.236.1586995407394; 
 Wed, 15 Apr 2020 17:03:27 -0700 (PDT)
MIME-Version: 1.0
References: <1586655721-22567-1-git-send-email-vincent.chen@sifive.com>
 <1586655721-22567-4-git-send-email-vincent.chen@sifive.com>
 <CAFA6WYMsW7KL3D_VrgVheRheNeh8g=G7W=oxOzuytq7rT6-YVw@mail.gmail.com>
In-Reply-To: <CAFA6WYMsW7KL3D_VrgVheRheNeh8g=G7W=oxOzuytq7rT6-YVw@mail.gmail.com>
From: Vincent Chen <vincent.chen@sifive.com>
Date: Thu, 16 Apr 2020 08:03:16 +0800
Message-ID: <CABvJ_xgotHLZeywyStOjmSNd_bOVgbVHA=TbgAVfN=TPiwy2jA@mail.gmail.com>
Subject: Re: [Kgdb-bugreport] [PATCH v3 3/5] kgdb: enable arch to support XML
 packet support.
To: Sumit Garg <sumit.garg@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_170330_167158_5285D173 
X-CRM114-Status: GOOD (  19.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kgdb-bugreport@lists.sourceforge.net,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Apr 15, 2020 at 7:01 PM Sumit Garg <sumit.garg@linaro.org> wrote:
>
> On Sun, 12 Apr 2020 at 07:12, Vincent Chen <vincent.chen@sifive.com> wrote:
> >
> > The XML packet could be supported by required architecture if the
> > architecture defines CONFIG_ACRH_SUPPORTS_GDB_XML
>
> nitpick, I guess you missed rename here? CONFIG_HAVE_ARCH_KGDB_QXFER_PKT?
>
> -Sumit
>
Ya, I forgot to rename CONFIG_ACRH_SUPPORTS_GDB_XML to
CONFIG_HAVE_ARCH_KGDB_QXFER_PKT here.
Thanks for your reminder. I will modify it in the next version patch.

> > and implement its own
> > arch_handle_qxfer_pkt(). Except for the arch_handle_qxfer_pkt(), the
> > architecture also needs to record the feature supported by gdb stub into
> > the arch_gdb_stub_feature, and these features will be reported to host gdb
> > when gdb stub receives the qSupported packet.
> >
> > Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
> > ---
> >  include/linux/kgdb.h   | 11 +++++++++++
> >  kernel/debug/gdbstub.c | 13 +++++++++++++
> >  lib/Kconfig.kgdb       |  5 +++++
> >  3 files changed, 29 insertions(+)
> >
> > diff --git a/include/linux/kgdb.h b/include/linux/kgdb.h
> > index b072aeb1fd78..414bef20a8f3 100644
> > --- a/include/linux/kgdb.h
> > +++ b/include/linux/kgdb.h
> > @@ -177,6 +177,17 @@ kgdb_arch_handle_exception(int vector, int signo, int err_code,
> >                            struct pt_regs *regs);
> >
> >  /**
> > + *     kgdb_arch_handle_qxfer_pkt - Handle architecture specific GDB XML
> > + *                                  packets.
> > + *     @remcom_in_buffer: The buffer of the packet we have read.
> > + *     @remcom_out_buffer: The buffer of %BUFMAX bytes to write a packet into.
> > + */
> > +
> > +extern void
> > +kgdb_arch_handle_qxfer_pkt(char *remcom_in_buffer,
> > +                          char *remcom_out_buffer);
> > +
> > +/**
> >   *     kgdb_call_nmi_hook - Call kgdb_nmicallback() on the current CPU
> >   *     @ignored: This parameter is only here to match the prototype.
> >   *
> > diff --git a/kernel/debug/gdbstub.c b/kernel/debug/gdbstub.c
> > index 4b280fc7dd67..a0617c883029 100644
> > --- a/kernel/debug/gdbstub.c
> > +++ b/kernel/debug/gdbstub.c
> > @@ -792,6 +792,19 @@ static void gdb_cmd_query(struct kgdb_state *ks)
> >                 }
> >                 break;
> >  #endif
> > +#ifdef CONFIG_HAVE_ARCH_KGDB_QXFER_PKT
> > +       case 'S':
> > +               if (!strncmp(remcom_in_buffer, "qSupported:", 11))
> > +                       strcpy(remcom_out_buffer, kgdb_arch_gdb_stub_feature);
> > +               break;
> > +       case 'X':
> > +               if (!strncmp(remcom_in_buffer, "qXfer:", 6))
> > +                       kgdb_arch_handle_qxfer_pkt(remcom_in_buffer,
> > +                                                  remcom_out_buffer);
> > +               break;
> > +#endif
> > +       default:
> > +               break;
> >         }
> >  }
> >
> > diff --git a/lib/Kconfig.kgdb b/lib/Kconfig.kgdb
> > index 933680b59e2d..d7f70335efaf 100644
> > --- a/lib/Kconfig.kgdb
> > +++ b/lib/Kconfig.kgdb
> > @@ -3,6 +3,11 @@
> >  config HAVE_ARCH_KGDB
> >         bool
> >
> > +# set if architecture has the its kgdb_arch_handle_qxfer_pkt
> > +# function to enable gdb stub to address XML packet sent from GDB.
> > +config HAVE_ARCH_KGDB_QXFER_PKT
> > +       bool
> > +
> >  menuconfig KGDB
> >         bool "KGDB: kernel debugger"
> >         depends on HAVE_ARCH_KGDB
> > --
> > 2.7.4
> >
> >
> >
> > _______________________________________________
> > Kgdb-bugreport mailing list
> > Kgdb-bugreport@lists.sourceforge.net
> > https://lists.sourceforge.net/lists/listinfo/kgdb-bugreport

