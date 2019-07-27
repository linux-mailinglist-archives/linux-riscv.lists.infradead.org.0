Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 550027778F
	for <lists+linux-riscv@lfdr.de>; Sat, 27 Jul 2019 10:06:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yLxgNR3nrB+pE0Qu7o5yP8gf1PuFuPo0drgbB5YVkjA=; b=YUUvONzWWNJx2C
	JcwhzMaOmxuncMoKAgkYL7gxAA42gQ1fSHWNxFdODKXS+ICwRAKw1TzbuuHsvSVniFheODlIdYUne
	9s8Wx6hXZtwHTNzHd5VsaTrVFD1+b9nP80ZhY9g+AEI04fUlVXMMabTOb8Wu1tXIC/IABkx0B9LtH
	LhpAaNRk8aY0myhRk+sOeGcrEMcglLh8eVIXTr2rvcNbDyO5cwttUL8FnA3bIrbg+P5RJSN3q4NsP
	gWnmzegGmE9EgTpUIDkEBsKq/ePtztZcKDpI6zj5dhDMQ9Ayw4JNt8AtPD1Cg/2Cv8EIEvjMO32V4
	f+Ic9BP+tYwCy1Pf4YpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrHiE-0003E2-9z; Sat, 27 Jul 2019 08:05:54 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrHiA-0003Da-Sl
 for linux-riscv@lists.infradead.org; Sat, 27 Jul 2019 08:05:52 +0000
Received: by mail-wm1-x344.google.com with SMTP id a15so49727159wmj.5
 for <linux-riscv@lists.infradead.org>; Sat, 27 Jul 2019 01:05:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TUuh5ETZIUfuMg+mI65VPB6v8GyKBFkoAPNDHAvE7TY=;
 b=DSK7CFgzqlGC9xuu5pNy0qetVetRijrSTSdqyMwkEpr4ELdVjD31wyMLuH3u6Pt/3O
 Zg0v/ZxrPbvESPn4/hhxy+RS40BgQ/zL3v3smv9CrHdHWgdY1WjjMiWy5ajW0sQBHlBt
 9Z833G8aSMPU5q+rx8YrgBOJocy/QVhM/4kimK06gO1bnJkTVTYN+Wy9BZO0YMa88PYs
 KsRZ7L6oCmP/tW8VLnbIT5b2IP5FVhouHrU+VX7bWlK1AJ/rMuIpwq3FmIPeyPFQgYp6
 bGooNcsD8QfOgokBFpMSpTB+S415pJsdhxG+tjzOf5yeeNYseex604fnB2KPMgR+Xd9w
 TBEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TUuh5ETZIUfuMg+mI65VPB6v8GyKBFkoAPNDHAvE7TY=;
 b=JdG0L0uXOjwL9gB7Jb84YuagaQFMFip5C2kYPOg9PJalNO2gSe8P6nyCYTR7cSXdjx
 /uBi4gByVhaU46jIR8SAlzLt/mq0VBkeikgw5wZp9wq6ed4pd79cp9bHZ1V5y60gP8Cd
 V/C9M4ppxRojI6FcAw3/qJSFuxdKp0jHUYxS0n1AJfJRc0QiBjQM6RrtljsYW9O43Diq
 Atl5N0ulST/B5EWoQQBFbMoGXOdgEr6WEjWNBLF7cREiZGa05cqV0wxauBwqDjDbktQQ
 IK5kt3nU1Ez39AeVUSe4h5Z8UW8RCgj1ann+EG+vELhov883q5E/o/k9WMSYQ7/t5lu8
 xFWA==
X-Gm-Message-State: APjAAAX78e5mn3jt/VTaTMdsKL7UiXkb/7g33o0vm4/g4eLJU3f+Fmhj
 HPjsGwLNGbp6bDogqrPWe4NGYJryKHN0dS5E/Wo=
X-Google-Smtp-Source: APXvYqwFGmFBAMUBtp+cB38MuVPO658FcLjausGtYUU+oVPF1Cz3+bTQ6+Bni7xO7RehJMYRYh4azEMgE93IzowsBh4=
X-Received: by 2002:a1c:cfc5:: with SMTP id f188mr81569607wmg.24.1564214748146; 
 Sat, 27 Jul 2019 01:05:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190726194638.8068-1-atish.patra@wdc.com>
 <20190726194638.8068-3-atish.patra@wdc.com>
 <alpine.DEB.2.21.9999.1907261346560.26670@viisi.sifive.com>
 <a8a6be2c-2dcb-fe58-2c32-e3baa357819c@wdc.com>
 <alpine.DEB.2.21.9999.1907261625220.26670@viisi.sifive.com>
 <MN2PR04MB6061790AFE4E0AAA838678028DC30@MN2PR04MB6061.namprd04.prod.outlook.com>
 <alpine.DEB.2.21.9999.1907270043190.26998@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1907270043190.26998@viisi.sifive.com>
From: Anup Patel <anup@brainfault.org>
Date: Sat, 27 Jul 2019 13:35:36 +0530
Message-ID: <CAAhSdy0Eycc0ORSnh6LJeC_D_x9yLOkoc7OkPNuN6qOcZEGVWg@mail.gmail.com>
Subject: Re: [PATCH 3/4] RISC-V: Support case insensitive ISA string parsing.
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_010551_070816_D249E429 
X-CRM114-Status: GOOD (  18.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Anup Patel <Anup.Patel@wdc.com>, Alan Kao <alankao@andestech.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Johan Hovold <johan@kernel.org>, Atish Patra <Atish.Patra@wdc.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, Jul 27, 2019 at 1:23 PM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> On Sat, 27 Jul 2019, Anup Patel wrote:
>
> > > -----Original Message-----
> > > From: Paul Walmsley <paul.walmsley@sifive.com>
> > > Sent: Saturday, July 27, 2019 5:00 AM
> > >
> > > On Fri, 26 Jul 2019, Atish Patra wrote:
> > >
> > > > On 7/26/19 1:47 PM, Paul Walmsley wrote:
> > > > > On Fri, 26 Jul 2019, Atish Patra wrote:
> > > > >
> > > > > > As per riscv specification, ISA naming strings are case
> > > > > > insensitive. However, currently only lower case strings are parsed
> > > > > > during cpu procfs.
> > > > > >
> > > > > > Support parsing of upper case letters as well.
> > > > > >
> > > > > > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > > > >
> > > > > Is there a use case that's driving this, or
> > > >
> > > > Currently, we use all lower case isa string in kvmtool. But somebody
> > > > can have uppercase letters in future as spec allows it.
> > > >
> > > >
> > > > can we just say, "use
> > > > > lowercase letters" and leave it at that?
> > > > >
> > > >
> > > > In that case, it will not comply with RISC-V spec. Is that okay ?
> > >
> > > I think that section of the specification is mostly concerned with someone
> > > trying to define "f" as a different extension than "F", or something like that.
> > > I'm not sure that it imposes any constraint that software must accept both
> > > upper and lower case ISA strings.
> > >
> > > What gives me pause here is that this winds up impacting DT schema
> > > validation:
> > >
> > > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Docu
> > > mentation/devicetree/bindings/riscv/cpus.yaml#n41
> >
> > If 'f' and 'F' mean same extension as-per RISC-V spec then software should also
> > interpret it that way hence this patch.
>
> The list of valid RISC-V ISA strings is already constrained by the DT
> schema to be all lowercase.  Anything else would violate the schema.
>
> I'd take a patch that would pr_warn() or a BUG() if any uppercase letters
> were found in the riscv,isa DT property, though, in case the developer
> skipped the DT schema validator.

If your only objection is uppercase letter not agreeing with YMAL schema
then why not fix the YMAL schema to have regex for RISC-V ISA string?

The YMAL schema should not enforce any artificial restriction which is
theoretically allowed in the RISC-V spec.

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
