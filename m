Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 631CA777C1
	for <lists+linux-riscv@lfdr.de>; Sat, 27 Jul 2019 10:50:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jNjPV/89zTCxbspjME6OG7fx+QoQYZn1BonBFnpR1Do=; b=g96k6uXj1XBm61
	KiSFsTiTStykKr7ekHLqpSBa/QDJZdgpuARm3e/Fup53cVFCRlh9V1gVAclUQkrkYok4k4dNZ219W
	UyfLOPUkexWbX6Z3mbg3SIChsf7GPhL8RdFPtFlE2/nunI0EY8f5XnmMyGMt+Bg/mWVyLPkK/SMC4
	V77y0a2UEAVfoxRp3+7RJDQk9UNsqlI6e45Kb1Kvz7lomIkM1j1zUSknHZxCHlqYyn01MIcMHhCCJ
	YuXPdnr/m5fJK2vt2LJStoyDmnGKU4WjYSZmrhLVKPD+GrM54VdgbP+jpy3nHLrDG+4n9H0UDOdob
	tLMVPtN5YjPWwQSzAmdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrIPA-0005Vi-G1; Sat, 27 Jul 2019 08:50:16 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrIP5-0005VN-Oj
 for linux-riscv@lists.infradead.org; Sat, 27 Jul 2019 08:50:12 +0000
Received: by mail-wm1-x341.google.com with SMTP id a15so49783540wmj.5
 for <linux-riscv@lists.infradead.org>; Sat, 27 Jul 2019 01:50:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4UPNTz4TdgzIZmMBXeTwtZgEi0MW7Uef+jaY95Hrkds=;
 b=RmkjqWEyykTcnQJOzeVJPssrZCe1IDbCTicTgCyB17xg/pyUVbCGsnH85S6mBbL6Fj
 KMDdamonixrIwb18WueFU7+3xJRnixen9A/u494I7HesUdwH6oame7qDGjhxzrmchGGp
 lSzjjMflEhF/Gshz2na4TPBgBiTr9MOxr6tyf6VVaKOaRw4mfwABG0fwW7gjolMHhIjb
 5q1Q/ANNgTQ1P8AhlvG4TfEqnVVNBALz9zjPimHVxRE6O5YKgCC22ZoGf0+FtozAcCwq
 FWUUD7tXJ5x4giwLCoyjLx8ak3CrI7Bc8e96iwr1YjUGleMOs8o1srXOiUk6YKt+bVC1
 TYRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4UPNTz4TdgzIZmMBXeTwtZgEi0MW7Uef+jaY95Hrkds=;
 b=l/s6g2tilOleL5cf3UzB+hzr4Vxe5WEz8bWeP5mHF2tpb2+zPU/r9ErokaAg3mnCPp
 UoOsgGGXeDEFm4okQ+jNW0BhQmHOIwORhkXKhfpwfq0z3g3xJsiGkbUWQrl/C+x9PNhS
 2y6qHQyOFCq6fRYXghQiSSZ/PDe8fwJblA5qvQWfAAa1gwf0ft4kEqQ0GmwxynBWxkse
 IKZMl++vgbGkEEl0edtg02g+TKmR8SonjTA60FZO4uSGfuwUGCKpdHBABDR2w5DwGvBM
 UJWs/rpZqV+M+B6K+LFDq+GFuKbTlZ+d4EWgtMTCp3UmFzbi2Mp9iEiuWrr+mi741GGj
 n29g==
X-Gm-Message-State: APjAAAUD9tMUG6BhfjD1XJUDNhngQfchgRXfSWbhhfKE9Zf7R3ouWebQ
 WZ3FuyJ8YR/CPXuLNmeN9fWPU4PqI8m0Z5C0JQM=
X-Google-Smtp-Source: APXvYqzQ4Q9GNrarrIHfE0HUsoXwYb1yvJMPY2nvjma+Y+fGnO61LESEhgXK1xRqBYxX/g71uSVyV/no2h0IlZs2xMQ=
X-Received: by 2002:a1c:9d53:: with SMTP id g80mr84386351wme.103.1564217409437; 
 Sat, 27 Jul 2019 01:50:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190726194638.8068-1-atish.patra@wdc.com>
 <20190726194638.8068-3-atish.patra@wdc.com>
 <alpine.DEB.2.21.9999.1907261346560.26670@viisi.sifive.com>
 <a8a6be2c-2dcb-fe58-2c32-e3baa357819c@wdc.com>
 <alpine.DEB.2.21.9999.1907261625220.26670@viisi.sifive.com>
 <MN2PR04MB6061790AFE4E0AAA838678028DC30@MN2PR04MB6061.namprd04.prod.outlook.com>
 <alpine.DEB.2.21.9999.1907270043190.26998@viisi.sifive.com>
 <CAAhSdy0Eycc0ORSnh6LJeC_D_x9yLOkoc7OkPNuN6qOcZEGVWg@mail.gmail.com>
 <alpine.DEB.2.21.9999.1907270108420.26998@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1907270108420.26998@viisi.sifive.com>
From: Anup Patel <anup@brainfault.org>
Date: Sat, 27 Jul 2019 14:19:58 +0530
Message-ID: <CAAhSdy1pqZP+M27idvfOB8eB8zhPD_7hx9S60FpOmWRHs-R2qg@mail.gmail.com>
Subject: Re: [PATCH 3/4] RISC-V: Support case insensitive ISA string parsing.
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_015011_809226_4770832B 
X-CRM114-Status: GOOD (  10.81  )
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

On Sat, Jul 27, 2019 at 1:46 PM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> On Sat, 27 Jul 2019, Anup Patel wrote:
>
> > If your only objection is uppercase letter not agreeing with YMAL schema
> > then why not fix the YMAL schema to have regex for RISC-V ISA string?
>
> I don't agree with you that the specification compels software to accept
> arbitrary case combinations in the riscv,isa DT string.

DT describes HW and HW follows RISC-V spec.

Enforcing software choices in DT YMAL schema is not correct approach.

Some other OS (such as FreeBSD, NetBSD, etc) might choose to go with
upper-case characters only in their DTS files.

>
> > The YMAL schema should not enforce any artificial restriction which is
> > theoretically allowed in the RISC-V spec.
>
> Unless someone can come up with a compelling reason for why restricting
> the DT ISA strings to all lowercase letters and numbers is insufficient to
> express the full range of options in the spec, the additional complexity
> to add mixed-case parsing, both in this patch and in the other patches in
> this series, seems pointless.

So, using strncasecmp() in-place of strncmp() and using tolower() for
each character comparison is complex for you ?

Why do we need a pointless restriction  in YAML schema ?

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
