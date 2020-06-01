Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B14C41EA0A2
	for <lists+linux-riscv@lfdr.de>; Mon,  1 Jun 2020 11:13:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jnDv9mKhgisjuUv4442s3oBzMirNjfvFW3husMjpwxI=; b=CBUejn+Z9DP5RcTZXiO9CP14p
	Md+2wAKTOpYqRvt94HZi0iyClySfSs7cF3ToxQYn2Miti9rHxQxLmC/t/bvZbfoEsN+9rJzk4RkbQ
	KRsmiGRURqBIMriWKLLlE59I9s2unH9M9QvZOqSwLkcmDgC1CXZjWAP0raysq/I7BPoYWE6OZ5Zdl
	sKAvtHWMlJDm5VY7ZO1xFkF5Xb25OJCyX0d+27OVlGTLwfCK4cW6xfvZrpAliOrPKJxto7aw1N4Cu
	eZDNRjNakzFfjMC4q7jnEjmnIAnzaEpwgJUVunZl5BZFuIne5v4VT7NynHicbI40lInpDjEQSCXkN
	wiQ9i6MJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfgW2-0004km-N0; Mon, 01 Jun 2020 09:13:54 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfgVz-0004jh-Nt
 for linux-riscv@lists.infradead.org; Mon, 01 Jun 2020 09:13:53 +0000
Received: by mail-wm1-x343.google.com with SMTP id v19so9992562wmj.0
 for <linux-riscv@lists.infradead.org>; Mon, 01 Jun 2020 02:13:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jnDv9mKhgisjuUv4442s3oBzMirNjfvFW3husMjpwxI=;
 b=oOq/2y6dQ/vmouv3c8dq7KDNJz3DGi7rYIuZx9O+hzxd7n4l9dCfjHnhgK4bpieJp/
 GjSWLrt9LbXQrH2KudbYjHeDcO6w4P/RMQYwleAvubwph6FFQdDVxOOlLPH5oIo1VBTO
 m7Ahf6aZZoUci0XOd5JOPf+JZrQ2CtQhPoLs4A6qUxlAbgFYgyqJ/JQD2Sp+WAv7dXTh
 zZ2eTZiU5BeCIiWQuJCAjquA361uVlXxZkWmQ5Ms3DNlx++5gwKP3jw68q+dl11EAVu/
 yQD/pOiRWgUvMV/1QSpFg6TN3uAALILOmnBwenQRJJEjo4epyXRjh02RkA6Hwjw0Yj63
 ZNww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jnDv9mKhgisjuUv4442s3oBzMirNjfvFW3husMjpwxI=;
 b=WBWEz9zbhOILEphyXEZrDJ5sdQl24fzyQVqOhEgyatcvbe6e6M0kd+u2MyGyQJmxez
 bYAWadgkMDeF7xKwp8gUUOd4ZBMMLqmWWJdRfUBYzlinLFqHAqxbstxrXI3USmYp0iaq
 pDzQtyev2kGBhlrNMVF9NxTMwLGPHIUFINr9dcNZ6ZIeKBpXM213SpiWtGOS5eNc7Q+w
 Rt83ZgOHkJMpBI1j0Akm6o9bMLRYZAgAMBtRMC3k5xXUMIa8smwVgHwasxEEkoF6X48B
 XQ3wC6G489dxLuonhgAiAUvv2RWf+7ggNTUacyzr1kbOsR46E8lLEqw3l7Y/ZFybrOEF
 Il1w==
X-Gm-Message-State: AOAM530S11IB9BStkAg9mt/UYUq/Fhl9ZPM3IF6C2sXgxkfK+pN3wzvM
 oxoB7w57YEns8/ztIlS1SR3x5OsjV2+F3wqO9drpag==
X-Google-Smtp-Source: ABdhPJyo2ugkmrpuJC16gnUTQoZ8Arf2Zn+UHfcMhlT4623YsylyPuxvgGg9UpSADEofhWrmPk2CiIr5b+dLwVBb/aE=
X-Received: by 2002:a7b:c5d7:: with SMTP id n23mr22311332wmk.185.1591002828890; 
 Mon, 01 Jun 2020 02:13:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200530100725.265481-1-anup.patel@wdc.com>
 <20200530100725.265481-4-anup.patel@wdc.com>
 <cd4a5513197b73e3b8d335f09117bb8d@kernel.org>
 <CAAhSdy3cnZwnjpqWkixmZ5-fi=GK1cSUsjah=P3Yp5hjv382hg@mail.gmail.com>
 <a5f1346544aec6e6da69836b7a6e0a6e@kernel.org>
 <CAAhSdy2fJ1cd2OjAWODOmSbkWUBfvvr4rvsTqh4qNxZjTTKo5A@mail.gmail.com>
 <e315f76b06b7b0935ebee867c04f364e@kernel.org>
 <CAAhSdy3-dr1URn1mGu3n9D-h+wjsU18nbWPYMRNAtitMa58rwA@mail.gmail.com>
 <ffeba9a68e72cf2cb97759c5fb496fac@kernel.org>
In-Reply-To: <ffeba9a68e72cf2cb97759c5fb496fac@kernel.org>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 1 Jun 2020 14:43:37 +0530
Message-ID: <CAAhSdy0LA13us3+tz6k2OBj6P7m4v0nQSQyGwF5O4NEdei=d6Q@mail.gmail.com>
Subject: Re: [PATCH v6 3/6] irqchip: RISC-V per-HART local interrupt
 controller driver
To: Marc Zyngier <maz@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_021351_800591_BC40A886 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>, Anup Patel <anup.patel@wdc.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Atish Patra <atish.patra@wdc.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Jun 1, 2020 at 1:11 PM Marc Zyngier <maz@kernel.org> wrote:
>
> On 2020-06-01 05:09, Anup Patel wrote:
> > On Sun, May 31, 2020 at 4:23 PM Marc Zyngier <maz@kernel.org> wrote:
> >>
> >> On 2020-05-31 11:06, Anup Patel wrote:
>
> [...]
>
> > Also, the PLIC spec is now owned by RISC-V foundation (not SiFive) so
> > we will have to rename the driver to "irq-riscv-plic" and will have a
> > new
> > generic compatible string "riscv,plic-1.0.0". One of us (me or Palmer)
> > will
> > send separate patches for this renaming. I hope you will be fine with
> > this??
> > (Refer, https://github.com/riscv/riscv-plic-spec)
>
> Do we really need the churn of a renaming? A new compatible, and maybe
> a new config option should be enough, no? What does the renaming give
> us?

I thought renaming the file would be good to reflect ownership of RISC-V
PLIC spec but I guess renaming just Kconfig option and new compatible
string is fine as well.

Regards,
Anup

