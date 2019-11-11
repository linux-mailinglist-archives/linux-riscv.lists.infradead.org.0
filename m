Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79612F7963
	for <lists+linux-riscv@lfdr.de>; Mon, 11 Nov 2019 18:02:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qhOJwf/gndgr8yzAehKiJ1pp08jlkqovdWaKoCqWcAk=; b=LtMpXMmtDG32ju
	JqGBpnrso/9lHrEliyM3PbYY7xrcQPyuYhOT7eDWzHL2AsfExS4Uxy9Ts+NP6CNKG06JGLupmnGb4
	XWM9sDaq/bQqHcslWR/mDrLnX14BXwbI+Nhf19r/Lhlt7sQBAJTgnMLN3hCP2JmqlZK5Jmn6/TWWJ
	vQCl6YWjzTHnfzOGd/gFwb+5E593QuFPd7xhYQbvsAt/k22Wstv8MpbNMY194QE6TDxv3XsaGPaS1
	yqmBiAUmbUVEV2Lti72dY0GjbU34fKaxP/HRF6j9S9AF0sRDRr4K9kQKsI98fyUeWBQdBCIcQ3bwT
	x1C2WgcYAnsxwwSIv7wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUD4q-0006u2-EA; Mon, 11 Nov 2019 17:02:08 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUD4m-0006tD-MG
 for linux-riscv@lists.infradead.org; Mon, 11 Nov 2019 17:02:06 +0000
Received: by mail-wm1-x343.google.com with SMTP id l1so47945wme.2
 for <linux-riscv@lists.infradead.org>; Mon, 11 Nov 2019 09:02:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8jKXzjFxiNI4cA5WpDfyfduHU/2/pOXFBSoPzmL4nYU=;
 b=YTEnU3Pz3xr/+kfF4zzZI3ZAM1zmHORin9tMZwTsM9l+ct/JqaEji+fKDcHvnxhsEh
 X7DwuYQ4vlZeb2FFOaOaVolBLb0xPLRy5+t+o6fMePdCgRWBSpVhjokjSFIPLsW+Qn3a
 QknLnZ9DA0lvgzoDFAFjy2wH5vh6maDO1ABDUCLCh5nZhTKYp2qMPMJqSRBMFh3OjgQa
 fgf6wuedNAnWqdec0YTMYZqlZB7NQXC2IZ5sulXl/R6m0VobzFTb1i/uSn3E2+bUA3Y1
 lwRTpxCg2Iq7hYLWDEcJ7axpqODMovCXflRyLmLnopWVngkBIaJ1aIoh6x+5FFPcPt+d
 suOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8jKXzjFxiNI4cA5WpDfyfduHU/2/pOXFBSoPzmL4nYU=;
 b=r9TA8ULWbBhRB1kXMqpmXqZBlWrsRtF2gRQdiXTsvyj+lAkJXfByqL0gRfFbaL/Y2x
 YKNzp89YI/hZj0skT/qrj8d5vUnVMwgVRhLR87avG9ekVSwcaBksmbvEL9VnxH+x+Mpb
 6VwADYK/9NRH1wWF62OZOonKCWoAXd+OM4fGgvvL8VGshUrb0CICZ46KoWFW9xzub+Du
 vUEPtNMyHeyNvLL9ObWNxc8jEme8DNlFnoVBpnpEIuCzq8A3GRsRnla+MLlZ5oPZWLGU
 ZgO0rl7qlkM92ztguq/qkFR2aR9tDFf3VX6cJ6mZp8Ri6lZY3DViKS8dTfpZhjbrKZq4
 GXiA==
X-Gm-Message-State: APjAAAWzW36BosmhAvBo90i7BtRI0z48YNOdUsQPB1kNEIE2N+msRya6
 qa8RzA9d2bdFzR+h0NK1LAEDrr4wbw0SQYP64io2GLmW
X-Google-Smtp-Source: APXvYqxMhV6kj3i0rr995Cd4g6vMKwFmSQfqHyFEqBW+IWvD8hMiXm+8IGuBX6Nwl5Uy5ooEQibN3yrfZJtYmXJjXEw=
X-Received: by 2002:a1c:9601:: with SMTP id y1mr20441359wmd.157.1573491720253; 
 Mon, 11 Nov 2019 09:02:00 -0800 (PST)
MIME-Version: 1.0
References: <20191111133421.14390-1-anup.patel@wdc.com>
 <mvmv9rqcxpq.fsf@suse.de>
 <MN2PR04MB60616625B9BEFF634FA680728D740@MN2PR04MB6061.namprd04.prod.outlook.com>
 <mvm5zjqcwlr.fsf@suse.de>
 <MN2PR04MB60611FB55CDCF6AB5930C73A8D740@MN2PR04MB6061.namprd04.prod.outlook.com>
 <mvm1ruecpyv.fsf@suse.de>
In-Reply-To: <mvm1ruecpyv.fsf@suse.de>
From: David Abdurachmanov <david.abdurachmanov@gmail.com>
Date: Mon, 11 Nov 2019 19:01:23 +0200
Message-ID: <CAEn-LTrL_Dtka6So3Pj=G+BV2a-UoHxGGLLDF4dqAG68AnH_5g@mail.gmail.com>
Subject: Re: [PATCH] RISC-V: Enable SYSCON reboot and poweroff drivers
To: Andreas Schwab <schwab@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_090204_754688_C11F59CC 
X-CRM114-Status: GOOD (  13.75  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: brainfault.org]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: brainfault.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (david.abdurachmanov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Anup Patel <anup@brainfault.org>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Nov 11, 2019 at 6:55 PM Andreas Schwab <schwab@suse.de> wrote:
>
> On Nov 11 2019, Anup Patel wrote:
>
> >> -----Original Message-----
> >> From: Andreas Schwab <schwab@suse.de>
> >> Sent: Monday, November 11, 2019 8:02 PM
> >> To: Anup Patel <Anup.Patel@wdc.com>
> >> Cc: Palmer Dabbelt <palmer@dabbelt.com>; Paul Walmsley
> >> <paul.walmsley@sifive.com>; Atish Patra <Atish.Patra@wdc.com>; Alistair
> >> Francis <Alistair.Francis@wdc.com>; Christoph Hellwig <hch@lst.de>; Anup
> >> Patel <anup@brainfault.org>; linux-riscv@lists.infradead.org; linux-
> >> kernel@vger.kernel.org
> >> Subject: Re: [PATCH] RISC-V: Enable SYSCON reboot and poweroff drivers
> >>
> >> On Nov 11 2019, Anup Patel wrote:
> >>
> >> >> -----Original Message-----
> >> >> From: Andreas Schwab <schwab@suse.de>
> >> >> Sent: Monday, November 11, 2019 7:38 PM
> >> >> To: Anup Patel <Anup.Patel@wdc.com>
> >> >> Cc: Palmer Dabbelt <palmer@sifive.com>; Paul Walmsley
> >> >> <paul.walmsley@sifive.com>; Atish Patra <Atish.Patra@wdc.com>;
> >> >> Alistair Francis <Alistair.Francis@wdc.com>; Christoph Hellwig
> >> >> <hch@lst.de>; Anup Patel <anup@brainfault.org>;
> >> >> linux-riscv@lists.infradead.org; linux- kernel@vger.kernel.org
> >> >> Subject: Re: [PATCH] RISC-V: Enable SYSCON reboot and poweroff
> >> >> drivers
> >> >>
> >> >> On Nov 11 2019, Anup Patel wrote:
> >> >>
> >> >> > We can use SYSCON reboot and poweroff drivers for the SiFive test
> >> >> > device found on QEMU virt machine and SiFive SOCs.
> >> >>
> >> >> I don't see any syscon-reboot compatible in the device tree.
> >> >
> >> > I have sent patch to QEMU as well for generating SYSCON DT nodes.
> >>
> >> What about the kernel DT?
> >
> > For QEMU virt machine, the DT is generated by QEMU at runtime
> > so we don't need an explicit DT file in Linux sources.
>
> What about the HiFiveU?

Unleashed uses gpio-restart which depends on gpio driver (not upstreamed and
not posted for review on mailing list). I have that working on my build.

david

>
> Andreas.
>
> --
> Andreas Schwab, SUSE Labs, schwab@suse.de
> GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
> "And now for something completely different."
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
