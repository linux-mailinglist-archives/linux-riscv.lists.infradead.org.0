Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E3781840A9
	for <lists+linux-riscv@lfdr.de>; Fri, 13 Mar 2020 06:47:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MFCeIjrIeprktGpVyucNVZgZFQlGZDhlUUcHYN6amR0=; b=PaNHiqSOoj1N38ExuI54NSkfz
	kSgQ3ckueEBD/NgDqtm2x1f8tFncJa51t+mT0DaPe8UHzPfcggAFIZK1Pd8REe5kztJI9XTTVFpZv
	0nCmia0yUOt5JgynRLuHIrgFH5U46NXYDKP68Di16M+HYHBY+Zt7OLuWeFQFzFEAJ16smdQJeEmXo
	nk18fSyxjn8VPT6cBSbOAMt95AYStpWpFrnSpUEkFi4elrNNrZNnpQP3QijgPbe+RHRrD33vdbCWi
	BDMLIqRD8xjsmLTJiwCLMqzJbThTfYNR1+p2IdO2ptWed4fy0tEszroRnVw1Q2rfr2ae5i4iZQd8h
	OHCk6NG/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCdAO-0003wk-4C; Fri, 13 Mar 2020 05:47:28 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCdAK-0003wO-6n
 for linux-riscv@lists.infradead.org; Fri, 13 Mar 2020 05:47:26 +0000
Received: by mail-wm1-x342.google.com with SMTP id e26so8923406wme.5
 for <linux-riscv@lists.infradead.org>; Thu, 12 Mar 2020 22:47:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MFCeIjrIeprktGpVyucNVZgZFQlGZDhlUUcHYN6amR0=;
 b=GMZ0Ee7UukUqpRJiD2JeTtCrN1DpQaka9iUX/ZIf2NKsmK3NtMvvDkdBzRTFhQ75mL
 nUdpQXFKPWscJLnYi67Ym8r8krD8L3pHoNbfwU6Uzeo2KJaQcuvqoShmc0amE4VAHRWM
 qiu/+rpEXbKw4pZwvgUppFE/QQuqXLDVoQ4sJYZsL3Wjv32MCNrH5b6ClRj830TogCtG
 SwBIl9yoM1WfPi+uwrOAxYzT8DQ9HuwzrEnio8l2dqhcdZsVYT7CGnnnu8mAP1m3SZj4
 tSyJMa6SO7qcU5Fnin5VMcKkX74deTrQd53yCLAoHZ8a/xe2j7E98OzbHlPUj5JbtV+1
 JeSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MFCeIjrIeprktGpVyucNVZgZFQlGZDhlUUcHYN6amR0=;
 b=m4CYhLu8IXsgv3U62ZulHSLctztSQKdwhGGgy7ir5wrg8Yb4aYjyMorh7VvXsFuQ/J
 IvH6lP8d4UI+TCOs/etqVctfXPgVhXE8pAiTBw4p6J3oOXVk8dFy2zOdQCMVptVc3rRQ
 qLwvCL3uuLpKr8ZboDyx6d8i1XJWZquA4/lWMiyRRWZY52OllA0AcDPHQQG8Uwvyic9i
 XJ6rWX6RtyKFPVTlgnzToZPavJIgiyHJ4+bkFs23OcCE3ypKw4KLG4gU86BPuBWdHICt
 VBzjjJ0ba4sU2T3cKW6GVAcYN0NfeLbM9SfHAxDmR85Dwsr52de14DUtJaQe+vNKx+RF
 EyKA==
X-Gm-Message-State: ANhLgQ3j+gueCv/yDCDLeFU/Bjl2uStw4b/oOh+ipOl7BtSzhc1nJPr6
 dvmRu2s2gA7J55MCfgk4BpeuaRyYDKb7kXkKnUFt
X-Google-Smtp-Source: ADFU+vuJURqOI3JenjeDjyI+0NVSxcZ2X80I2BlGd0UkdzVQwyXmJ6MJuiV/+mPS1dr0CvPoHG/gSn6htUjQBz6H3Q0=
X-Received: by 2002:a7b:c391:: with SMTP id s17mr7553632wmj.55.1584078442331; 
 Thu, 12 Mar 2020 22:47:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200312051107.1454880-1-damien.lemoal@wdc.com>
 <20200312051107.1454880-10-damien.lemoal@wdc.com>
 <47a2207d-6c16-b007-4c35-7c1a0649ecc0@gmail.com>
 <CAOnJCUJjLB2fwW+ZAKc9nixUeJJm7pg8KxuOkqF5pvY1c0nRsw@mail.gmail.com>
 <05118450566d5a50c0a748cc9b42f5e411004144.camel@wdc.com>
In-Reply-To: <05118450566d5a50c0a748cc9b42f5e411004144.camel@wdc.com>
From: Atish Patra <atishp@atishpatra.org>
Date: Thu, 12 Mar 2020 22:47:11 -0700
Message-ID: <CAOnJCU+6yU9Fsg=JJcfTSZV0XqdWv6aMvWPU7zMmuVVU1im1Xw@mail.gmail.com>
Subject: Re: [PATCH v2 9/9] riscv: Do not initialize PMP on Kendryte SoC
To: Damien Le Moal <Damien.LeMoal@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_224724_684342_01B34295 
X-CRM114-Status: GOOD (  21.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "palmer@dabbelt.com" <palmer@dabbelt.com>,
 "seanga2@gmail.com" <seanga2@gmail.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Mar 12, 2020 at 10:25 PM Damien Le Moal <Damien.LeMoal@wdc.com> wrote:
>
> On Thu, 2020-03-12 at 11:10 -0700, Atish Patra wrote:
> > On Thu, Mar 12, 2020 at 8:20 AM Sean Anderson <seanga2@gmail.com> wrote:
> > > On 3/12/20 1:11 AM, Damien Le Moal wrote:
> > > > Commit c68a9032299e ("riscv: set pmp configuration if kernel is running
> > > > in M-mode") added PMP initialization to M-Mode. While this patch is
> > > > valid for any SoC following the ratified riscv specifications, the
> > > > Kendryte K210 SoC is based on earlier unstable specifications and does
> > > > not seem to support PMP initialization (the SoC crashes if CSR_PMPADDR0
> > > > or CSR_PMPCFG0 are accessed).
> > >
> > > The PMP bit has its polarity inverted in the v1.9 specification, and is
> > > called the SUM or Supervisor User Memory Access bit.
> > >
> > > --Sean
> > >
> > I don't think supporting old specs in Linux is a good idea. As per the
> > patch guideline
> > for RISC-V Linux, patches for only "frozen" or "ratified"
> > specifications are allowed.
>
> Yes, I agree on this point. However, this should be taken a little more
> lightly in my opinion. As long as we do not try to run the K210 with
> MMU turned on, this is the only known tiny deviation from the current
> ratified privileged specs v1.11. Since this is really a small one, I am
> inclined to consider this in the same way as a hardware bug, for which
> software exceptions are perfectly acceptable in the kernel. There are
> tons of "quirk" bits defined for ratified specifications such as NVMe
> or AHCI for example, due to hardware bugs. Even though the hardware
> intend to follow the specifications, quirks are sometimes necessary as
> work-around for hardware implementation bugs which are far more
> difficult to fix than software.
>

> Of course there are limits to this and sometimes, the decision has to
> be "go fix your hardware". In this case, I do not think we are at that
> level of seriousness, again assuming we never run with MMU on (because
> then we would need to implement support for the 1.9 specs, and that
> would seriously mess things up).
>
> Without this fix, the K210 cannot boot, at all. So if this small change
> is refused, we may as well just give up on the entire effort. That
> would really be too bad since the K210 boards are really cheap and
> would enable a lot of hobbyist and students to start playing with Linux
> on RISC-V...
>

I think there is some confusion. I was suggesting that supporting v1.9
spec is not a good idea.
That means allowing PMP access as per v1.9 spec instead of this patch
as Sean suggested.
This patch is fine as it just ignores touching the PMP CSR for
kendryte board. There is no issue with this patch
and it doesn't violate the patch policy.


> In the end, I think this is Palmer's decision. I gave my 2 cents above.
> If there is too much push-back on this, I will stop the effort because
> I do not see how to work around this one within 1.11 specs.
>
> Cheers.
>
> --
> Damien Le Moal
> Western Digital Research



-- 
Regards,
Atish

