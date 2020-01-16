Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4000113D324
	for <lists+linux-riscv@lfdr.de>; Thu, 16 Jan 2020 05:29:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fdDF50I5hxOY/uPvyTi5Nyzs/7Qte+oY6PsGo1nyL58=; b=Rg9nO2iqj5vI1SGaZJsr2b7zc
	kf4O53Z4fM9Hv3tVGve2Y+GLaZg4qkkye2tcvXdWRmP2o/6BR9kBfCJCmT5Y1qQTdvgOkHmAN67lH
	bfjyrH4oiV0SRS2N/Z7TxOGUnYZsuFm7u8Hea7Y1C/3zmaXEhBwn9/Elri2R1pgd9U2ozFvvPcFio
	HBBTMHgkur4UsVOPe0RMCa3XqVoJxNiOHBjY6+cH+/LuwBJXRuPClLeyVrAMH3mj4XwKsPDbf8XmB
	58w56U4MbKao0T9qcrcFQ2NZysT+uxNwV6+wXBm8jPMa3NAUrm9ZdmWsF3cdSMIlMlKle9v18VI3K
	/QWJ9MMKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irwmL-00060V-Au; Thu, 16 Jan 2020 04:29:09 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irwmH-000609-QG
 for linux-riscv@lists.infradead.org; Thu, 16 Jan 2020 04:29:07 +0000
Received: by mail-wm1-x342.google.com with SMTP id q9so2265428wmj.5
 for <linux-riscv@lists.infradead.org>; Wed, 15 Jan 2020 20:29:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fdDF50I5hxOY/uPvyTi5Nyzs/7Qte+oY6PsGo1nyL58=;
 b=VJZd2J3EFk4ApDAMA0KbDnAQusdZC6K5RRRZ4scnAuuUXCdOd7bkkyKATo3LVHqGfc
 7+Y2mXmYskr27gV6fWdm2yaZ3EhnQGcM86zrXjhQFrFjgSNc7pTO2vd541y2uQbQr5mV
 ThYe9oy1kI5ia7dtARf11oWgcp0HBfN0QtCKqoQpcatBifaj9SNUd5SWpr0rHhWvWd4l
 zS8cMHIrVSZ/nC3cIfbSbYrPL/t4VrFQlPrEbKPbliWdVH8VkpE3nPQdW8k1mMYCN0LU
 tFVhCB0X+cph3Ck6dc79N+jsk6K9A6NAczEle4XN7zkxo0BDuU0UOtaIPX4rBPQWnIBJ
 T60Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fdDF50I5hxOY/uPvyTi5Nyzs/7Qte+oY6PsGo1nyL58=;
 b=tVdZQ42Mpm/6699Rd7R0dhpqVtboCr0kUhV5mpSn9ZEkhZUAcjb+J0L6IE+85ZBrTY
 z4hH1hLofZwtwut6cvWejoh0nFA96XMJ+6IINigC258mxXkIjVbIwQyCQDUdm7eXzaj+
 H0cgBt0ifZLb0JADkvIq7raeReVvUwoLBOHX5cc5V8MCjX7Hnfjj93PPIivwo75gyvXE
 jQLyl9hceSY2UG1HD2MZFq599wTqTPaxfh/X2UwB4g/jRN5NaM/K+FbCpUZV2RxWzXWF
 sKxuMBGL3fuXhGx/X/MPLpEXTsnWxmlVr0xCJwxq0v4mj0ESljprhLJJaL5H0ktNBYh2
 UEwQ==
X-Gm-Message-State: APjAAAVyz2KZmxTjcmGdGW6cuuMQrwCIHJW4fjNw4fuOBrPiwre8F0aQ
 VGjNeOGVPK1v29pOIWdb24AMOLLuuBy0p4JMPLFqRA==
X-Google-Smtp-Source: APXvYqypT/bLy+NNQni/dEXiQ2hXcvwwOV1Jt+QjqxuT3KVv1AgYCM0umVbd9agiKV4gTPlgz17zzqhzBlat53lL0Zg=
X-Received: by 2002:a1c:9602:: with SMTP id y2mr3733923wmd.23.1579148943558;
 Wed, 15 Jan 2020 20:29:03 -0800 (PST)
MIME-Version: 1.0
References: <20200115065436.7702-1-greentime.hu@sifive.com>
 <alpine.DEB.2.21.9999.2001151832001.98477@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.2001151832001.98477@viisi.sifive.com>
From: Anup Patel <anup@brainfault.org>
Date: Thu, 16 Jan 2020 09:58:53 +0530
Message-ID: <CAAhSdy0r1AZVW3JL-KoUi5eh_b78Bw2VogOBA8CidydK5RzJAw@mail.gmail.com>
Subject: Re: [PATCH v4] riscv: make sure the cores stay looping in
 .Lsecondary_park
To: Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_202905_992457_F3351231 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Andreas Schwab <schwab@suse.de>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Greentime Hu <green.hu@gmail.com>,
 greentime@kernel.org, Greentime Hu <greentime.hu@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 8:02 AM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> On Wed, 15 Jan 2020, Greentime Hu wrote:
>
> > The code in secondary_park is currently placed in the .init section. The
> > kernel reclaims and clears this code when it finishes booting. That
> > causes the cores parked in it to go to somewhere unpredictable, so we
> > move this function out of init to make sure the cores stay looping there.
> >
> > The instruction bgeu a0, t0, .Lsecondary_park may have "a relocation
> > truncated to fit" issue during linking time. It is because that sections
> > are too far to jump. Let's use tail to jump to the .Lsecondary_park.
> >
> > Signed-off-by: Greentime Hu <greentime.hu@sifive.com>
>
> Thanks, queued for v5.5-rc.  Anup's Reviewed-by: has been dropped since
> the patch changed significantly - Anup, if you are still happy with it,
> please reply with another Reviewed-by:.  Thanks,

You can keep my Reviewed-by. I did not see any functional
changes in the patch so I am fine.

Thanks,
Anup

