Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E891F73A5
	for <lists+linux-riscv@lfdr.de>; Fri, 12 Jun 2020 07:58:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z9cTaFBI+99xVtiDZm+GKTv2mpyOf0v1BRYpLVk9ka4=; b=dKsaEqmXS0asMk
	D2zzqfO04M1qZ5Kg5wz0qCeeSfjotUUKrRuHtR/b1RZwkRMPi3hoSpiZd1etm5n+9eauA0314+Drs
	vsRa2htsW+ST8CJA9f/9OpNvIKt9kBa2bQVbZ31RZ4+pIBThKv/Mn5uyq2GxriYs1UqEEG2e94zMO
	XBpscnJMQwyw/SNMEM2QugDEeKIqk+iIKJOioX49jCp09tV+FSOMZl9cM+b0MWNIsnnOoXWkJtf8Q
	go8IYZroWoU6+KUgInJ3gqtbQKdsIbFajimP1i1eCSWCqFvr/6R44hZBifFMq+5TMURQM2ulbFdV9
	FVFQcY2VC/C1v/jd7kxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjchr-0004MG-Jf; Fri, 12 Jun 2020 05:58:23 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjchn-0004Li-GR
 for linux-riscv@lists.infradead.org; Fri, 12 Jun 2020 05:58:21 +0000
Received: by mail-lf1-x141.google.com with SMTP id d7so4803940lfi.12
 for <linux-riscv@lists.infradead.org>; Thu, 11 Jun 2020 22:58:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=z9cTaFBI+99xVtiDZm+GKTv2mpyOf0v1BRYpLVk9ka4=;
 b=gmzdMccfO8NLzTYiRxJgnF02DfYbCcj0Fgx94CbFkJU/l+tZCzZZetEFleDryxyVHR
 1zXLE9Y6oHtGEtoSeo/a7O+AtBiR1hdF0NSMKV0cZx3uAVrBoTgIwFyx2r5UDZasn2vX
 GmLM7BXnXuZQba6xYo7BY+U1ZBaEmwD6ZwMv/9m/5CBOzXuSPee44hbLNXLhVYQQztX7
 /vWVOwUjMpEZikglQfZT1q90F+mMsRawM1XBdpQpt1lFBcsLWlbyvDIUMSU6E3S+rCJ4
 pFZwU1w9hfWSuv9YFCuExj4j4qBpvo/KXdPDUbEaC5A+SZpEKtP1Sqk/qMlJlpYWxOV7
 83BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=z9cTaFBI+99xVtiDZm+GKTv2mpyOf0v1BRYpLVk9ka4=;
 b=EXoYvrOrlGRvp4294DzvZcj3SU3Ih+czDkQVDhgxETzZKxyEFMQ6S6wEv0RnIu5aNg
 oXFrstI5Ku7wS8nBJhAnAbLM60n01neCNBPbv4d+F1ntxp1Hg0neHegbCsnLre6n3T0m
 2fOT9qbCl3pIJtNS4q3YNGeupjU/4eLAHozHbUINBOKSi+8I55e6wMHGfJ4fq3SHZ/sN
 zxXVlxQkyAlJ1YeXB5kmonext5jUrYmg9Dq9Zb2vuIHgwdlj2fv4Pmbmh6Bq4POB5H35
 3TGGcQhN1nYTYPPvuOjGEbRUAIhKf8YHn0ZSUAjrXE//plqs2PV0rU9dhxd/rHdIgylP
 1CHg==
X-Gm-Message-State: AOAM531kVaeTRwNs0JnumZwIaNg2ZOb5hkZWR0VpbkfuRvBhydIM19bt
 +iS9myOLpq/Gjatna0+FnZmkcXv8TuF6hpwmT+g=
X-Google-Smtp-Source: ABdhPJzP2FLvxWHWWaA+yS1+IXIDIY+LA5WhBLrbXB/DHmsms2aDwVTeFWGqr/MgtP6OZgh5TkAhItqDTT4LPVzvYG0=
X-Received: by 2002:ac2:560f:: with SMTP id v15mr6099875lfd.160.1591941496406; 
 Thu, 11 Jun 2020 22:58:16 -0700 (PDT)
MIME-Version: 1.0
References: <20181113195804.22825-1-me@packi.ch>
 <20181113195804.22825-3-me@packi.ch>
 <20181114003730.06f810517a270070734df4ce@kernel.org>
 <a6abc4ce-4398-5ca6-992b-efb31e01c5ca@packi.ch>
 <20181115004141.5ed772834fc6bdf3467f244e@kernel.org>
 <CANXhq0qWwKRrz80Q3LSeQu-cH19otCF1my6dDGDxH0Q5j1RYYw@mail.gmail.com>
 <9cdd84b5-6c81-9bfa-5d35-6645f542f71e@packi.ch>
 <CANXhq0peZCWZsh37zZVzoi7spSzTfz7v4H5AytiAENKJdWK_tA@mail.gmail.com>
 <CANXhq0r5+BjsJ8jFtkWcm_1qPPQnLyZ5THNdPsxU568FNNa0XA@mail.gmail.com>
In-Reply-To: <CANXhq0r5+BjsJ8jFtkWcm_1qPPQnLyZ5THNdPsxU568FNNa0XA@mail.gmail.com>
From: David Abdurachmanov <david.abdurachmanov@gmail.com>
Date: Fri, 12 Jun 2020 08:57:39 +0300
Message-ID: <CAEn-LTrm6__-v7FmCRtNq2zm8up7O18wNhZmBmGwASj-Oy87qA@mail.gmail.com>
Subject: Re: [RFC/RFT 2/2] RISC-V: kprobes/kretprobe support
To: Zong Li <zong.li@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_225819_563599_CDFD1BFA 
X-CRM114-Status: GOOD (  23.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [david.abdurachmanov[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?UTF-8?Q?Patrick_St=C3=A4hlin?= <me@packi.ch>,
 Albert Ou <aou@eecs.berkeley.edu>, Anders Roxell <anders.roxell@linaro.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Greentime Hu <greentime.hu@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 5:45 AM Zong Li <zong.li@sifive.com> wrote:
>
> On Thu, Dec 19, 2019 at 5:28 PM Zong Li <zong.li@sifive.com> wrote:
> >
> > On Wed, Dec 18, 2019 at 9:10 PM Patrick St=C3=A4hlin <me@packi.ch> wrot=
e:
> > >
> > > Hi all
> > >
> > > On 18.12.19 10:14, Zong Li wrote:
> > > > On Wed, Dec 18, 2019 at 5:09 PM Zong Li <zong.li@sifive.com> wrote:
> > > >>
> > > >> From: mhiramat@kernel.org (Masami Hiramatsu)
> > > >>
> > > >> On Wed, 14 Nov 2018 21:52:57 +0100
> > > >> Patrick Staehlin <me@packi.ch> wrote:
> > > >>
> > > >>> Yeah, I think it's simpler.
> > > >>>
> > > >>> And I found that the kprobe_breakpoint_handler() was called witho=
ut
> > > >>> checking !user_mode(regs). In that case, you should add the check=
 in
> > > >>> front of kprobe_breakpoint_handler() call.
> > > >>>
> > > >>> Thank you,
> > > >>
> > > >> Hi all,
> > > >>
> > > >> Is there any update? I was wondering if this patch are keep going?=
 If
> > > >> not, I think I could pick it up to go head
> > >
> > > I am still working on it, albeit slowly, holiday season coming up her=
e
> > > in Switzerland may accelerate that a bit. All the feedback I got from
> > > Masami has been implemented.
> >
> > As Masami's suggestion, I don't see stop_machine in your implementation=
 [1],
> > are there some concerns to use it on SMP?
>
> Hi all,
> I introduced the patching code framework. Maybe it is helpful for
> self-modify code here. (Please see:
> https://lkml.org/lkml/2020/3/9/679)
> This patch series is reviewing, maybe we could apply the
> implementation after it was merged.
>
>
> >
> > > Additionally I added instruction simulation for everything except mem=
ory
> > > accesses. I am currently working on getting compressed instructions
> > > decoded properly into regular instructions but that is very tedious w=
ork.
> > > I guess I am two or three full days of work away from getting a RFC/R=
FT
> > > v2 series ready I guess that will happen in early January.
> >
> > Thanks for the efforts.
> >
> > >
> > > What I currently have is at [1], that is mostly untested as of now
> > > (beware I will rebase/squash that branch regularly). What I could use
> > > help with in the future (as in for v2), is somebody testing it on rea=
l
> > > hardware, as I've never gotten any testing feedback on my original
> > > patch-series (that would not have worked properly because of the lack=
ing
> > > cache-flush).
> >
> > I give some quick tests by using kprobe sanity test and simple LKM on
> > Hifive Unleashed board,
> > it seems to work normally. I could help to test your next version patch=
 as well.

Hi Patrick,

I have noticed that "riscv: introduce interfaces to patch kernel code"
(mentioned by Zong above) has been merged in 5.7 kernel.

I was wondering if you plan to submit a new revision of the patchset?

Thanks,
david

> >
> > >
> > > [1] https://github.com/packi/linux/tree/kprobes-riscv
> > >
> > > Patrick
>

