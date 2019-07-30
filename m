Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22F4C7A262
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Jul 2019 09:36:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rhkxwt+HCghZZ+4NvkWYJ9awYjbMbj0RgQW2tfvV+zg=; b=CMTAJLrut/NFwW
	rlXLXfWZKH8wfi/uDuqUt0G/nBWjh95vy/FCs+pfEBXkHh3ONBqnMwIhah1SAcihEJvxiOVZQ+6xA
	wZ1FteJY0s2MeJlfQoZFQombu/nYzPn4XJTMdquse+OB7a9Tz/yglUp2Z3wSdDk5BFnM7awBidVpQ
	OCEWG/fBKpHs/NOKU0pPzLVkPok/MkItkDCv48t1u7VTzvz0J7ZP2DX98OfTSNTdksxbAO2r3ZtfC
	gHExZONqipfFaqhGIPi4h5aUPhfm4u59FRRc6EtVM7yN735hDeIZuDi0K1QZsWJpyFx4WdLpP71J/
	mfgSJ99fZCUFu+guBfJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsMgT-0001PV-PF; Tue, 30 Jul 2019 07:36:33 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsMgO-0001Ob-6i
 for linux-riscv@lists.infradead.org; Tue, 30 Jul 2019 07:36:29 +0000
Received: by mail-wr1-x441.google.com with SMTP id x1so14658082wrr.9
 for <linux-riscv@lists.infradead.org>; Tue, 30 Jul 2019 00:36:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6U2acd1QmQp/fq0L96aRRGzLE2S05j+iUMMl/7Ujgp4=;
 b=I1JeO/u2t/9GtL4gb/6m3g7NQxNda7RBoL3u/BA4m3wmjG5pt9vru1WU9kUlKHh+TC
 5B5w9WYYre+FTnHTNqUp1FeYn/NuopIyDJJ5jD22bCDNEtLOl2qp7mqD5yUp0iPxbHMs
 U5KnIhavW/n2QLqF37U2bM9CqL7CPSf7Blg3DxyVQwBTruspAU+/kTvscIiG1RojUOUT
 q/fACG+tK3bBrNQXzYUjfKHji27uEAeZE/AA1o7lA/5MlHRq1MtiF8EgSuog2xvJ3RE2
 0tUerzh5y9KoUC7nN7zl+rVjq7brxpYDqrP+GsPO9SR8uFrWI/SkZFF6FerhO2zo5j87
 dzHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6U2acd1QmQp/fq0L96aRRGzLE2S05j+iUMMl/7Ujgp4=;
 b=ajLcwx7RvPFBQ8rq1Z0DuHIJJjuLu+df4hvO0fU+3ID4iqDDDP7P/6tGvmdhpcc6DS
 fA3KnkD+glOIO/54gMVBD9FwHd0eNAZWy3NOrVF0Broovorvxzr2TEpRcpxLz60/tuTd
 ckRXcI+TZi1JANo0Mq/fRhZMoOjDJq3WjnPQK4M575N0eWSBGLYsKx6DABwnW5ksL3P9
 Ey8xsMwDjSoIdinC9SaBA/Ya30c93IKeq/2NChM1pD4h8HYYi9qQ7L9SVfE0ewAC7wHG
 okdfilmShGbca2YoCsn1/G8IdeP7qN4t/d3ol3oJv4WQgR/Iz9m63Hr9o5Tqs+gCuCpg
 nejg==
X-Gm-Message-State: APjAAAUS3AfHwkhuO7oe1/JtUsHM3+xAzCTp6GoXF8+YabQatiY9YfbK
 u18due5W5hL5kcxPZzVSZZioOv/08ba4JVn0h4k=
X-Google-Smtp-Source: APXvYqySD/VhLD/1gRxFJ7qx4IrEkz4AhGCFJYUHqM5n38YeZUjiLceMw/XbhrPAFunOMf8mFEW26/rfKEpjphPolrI=
X-Received: by 2002:a5d:6284:: with SMTP id k4mr93182866wru.179.1564472186392; 
 Tue, 30 Jul 2019 00:36:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190729115544.17895-1-anup.patel@wdc.com>
 <mvm5znkau8u.fsf@suse.de>
In-Reply-To: <mvm5znkau8u.fsf@suse.de>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 30 Jul 2019 13:06:15 +0530
Message-ID: <CAAhSdy3+vkJkugqrDrw4tnPWRsPw0L8r_49pEWqrqxes69X2Pw@mail.gmail.com>
Subject: Re: [RFC PATCH 00/16] KVM RISC-V Support
To: Andreas Schwab <schwab@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_003628_243451_DE84F80C 
X-CRM114-Status: UNSURE (   6.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Radim K <rkrcmar@redhat.com>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 12:23 PM Andreas Schwab <schwab@suse.de> wrote:
>
> ERROR: "riscv_cs_get_mult_shift" [arch/riscv/kvm/kvm.ko] undefined!
> ERROR: "riscv_isa" [arch/riscv/kvm/kvm.ko] undefined!
> ERROR: "smp_send_reschedule" [arch/riscv/kvm/kvm.ko] undefined!
> ERROR: "riscv_timebase" [arch/riscv/kvm/kvm.ko] undefined!

Found the issue.

These symbols are not exported and you are building KVM RISC-V as module.

Thanks for reporting. We will fix it.

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
