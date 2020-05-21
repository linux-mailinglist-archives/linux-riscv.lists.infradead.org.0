Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A35E1DD9DF
	for <lists+linux-riscv@lfdr.de>; Fri, 22 May 2020 00:06:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=0cVGbHslsk+cbZypfcJMBHiLvJoLsHioFzaKTSs+n+o=; b=NKM1eikDRCespY
	VuAcQisWVBeyUZU/MAom/hbC/9SwpJI2Uck+6XRJg8Ng78C7Q8KebfMGVX8hWr0EojYF3uQvjlx4T
	9PqYAiXg4qb6qMwd95pISXHo+dwLNwjYbXNRrrsTrI7NKTJAOeR3K07DQ+mUtkNer/Uut+QGqfDJ5
	eblAHV9CJdFCm9T3ym5fzlZ8GeJv7B5wxFXrNbb0n4UkcYd0kCQIZOFOhps0UqDRQJQMSVa7XMGxr
	EV9PFKxrkrhB/4Arx+YzuDK8tld9yJJelNJrbRk6DY/Q8GQ3vgjeCUaQD+K9mFXezcpT1enCxe8Wx
	TBMOnM3JJloAA5aZqHZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbtKf-0007Vp-Kb; Thu, 21 May 2020 22:06:29 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbtKZ-0007Q5-Fv
 for linux-riscv@lists.infradead.org; Thu, 21 May 2020 22:06:25 +0000
Received: by mail-pf1-x442.google.com with SMTP id e11so3185671pfn.3
 for <linux-riscv@lists.infradead.org>; Thu, 21 May 2020 15:06:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=0cVGbHslsk+cbZypfcJMBHiLvJoLsHioFzaKTSs+n+o=;
 b=tFCc/C8HJj4LpJX0P2usSwLyQNiX7DxHVcYzHTYDYaHTMaraLT4kkBngKG8FhueNc5
 d5ePFyP3TLxjNPRnxc5UtTRC7HJNUa+E76KxJEHtwKvmmvQMLjiZdXWSVtor8Ip4v24k
 hOKoKObMITbh5hdxZKVY8waTspi0Z/D+1Zsr1GFBFvPvAlbpYALUyf7b9kp/mhn6pioJ
 SHMavJbQGI6Yv0lQENuxdhbfdf3QqpNruy95w1Zf1tj/jKk1oDNldY719Vnq19P7p3st
 bs2aE0AeCy/sOcgifPOR0ulmqEKoWYboeiMUJTP2WRsWkztcMg0rJhj3QAHKyk5CJYE6
 FSSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=0cVGbHslsk+cbZypfcJMBHiLvJoLsHioFzaKTSs+n+o=;
 b=qen3L3ZrrYWHdVlgppekHRkOQriIbdanoVBCRs8nqgPZYHEF9auqOPFzhkR9mT46qU
 KVRseKohESQCwEdx66+/hrmK4toBbq4/qnT19p325IpTgI1LYgMtsDJOeuqEw1CEJEBI
 phl2lmv+fg11LR4+1WT+9ot7k+hKtPxO/r1uP+bBGkQot8WEWwNzxYy3llRjB1XLfz7p
 /ScGrNFmtzKznR/9ufpM94oXigMmQouVANfOFHgY59k3VMhXdDYiEj7yo20Eh5tJk+1+
 eGNnUuSshlfNdL9CgfzkhqOKIHGMqwBG21WnurCtrJNlCdLG8UZE9Tnz4Q+f7oRf1KGq
 IzjA==
X-Gm-Message-State: AOAM5331MyORcmClkfjZ66lHbrav16bAHzdqzhHwh3sLOpwLZteOEOel
 Mq1SqXcocPl+43M9b5zk/nM65uQwxrReFQ==
X-Google-Smtp-Source: ABdhPJxvNiAP71og79LqCA+AUMUDFGKq0Neyp8AahXQM9Diqmra4GU8++wzYfqWAuuFkyfp8UIeyjw==
X-Received: by 2002:a63:6345:: with SMTP id x66mr10607701pgb.156.1590098782531; 
 Thu, 21 May 2020 15:06:22 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id t20sm5140916pjo.13.2020.05.21.15.06.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 May 2020 15:06:21 -0700 (PDT)
Date: Thu, 21 May 2020 15:06:21 -0700 (PDT)
X-Google-Original-Date: Thu, 21 May 2020 15:04:03 PDT (-0700)
Subject: Re: [PATCH v2 0/3] More improvements for multiple PLICs
In-Reply-To: <20200518091441.94843-1-anup.patel@wdc.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Anup Patel <Anup.Patel@wdc.com>
Message-ID: <mhng-a2588163-0a87-494f-af68-59f0ca15965c@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_150623_542815_AE219D64 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: jason@lakedaemon.net, Marc Zyngier <maz@kernel.org>, anup@brainfault.org,
 Anup Patel <Anup.Patel@wdc.com>, linux-kernel@vger.kernel.org,
 Atish Patra <Atish.Patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, tglx@linutronix.de,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 18 May 2020 02:14:38 PDT (-0700), Anup Patel wrote:
> This series does more improvements for supporting multiple PLIC
> instances.
>
> PATCH1 and PATCH2 are fixes whereas PATCH3 helps users distinguish
> multiple PLIC instances in boot prints.
>
> These patches are based up Linux-5.7-rc5 and can be found at
> plic_imp_v2 branch at: https://github.com/avpatel/linux.git
>
> To try this patches, we will need:
> 1. OpenSBI multi-PLIC and multi-CLINT support which can be found in
>    multi_plic_clint_v1 branch at:
>    https://github.com/avpatel/opensbi.git
> 2. QEMU RISC-V multi-socket support which can be found in
>    riscv_multi_socket_v1 branch at:
>    https://github.com/avpatel/qemu.git
>
> Changes since v1:
>  - Re-arranged PATCHs to have fixes first
>  - Added Fixes tag to PATCH1 and PATCH2
>  - Use %pOFP in boot print to distinguish PLIC instance
>
> Anup Patel (3):
>   irqchip/sifive-plic: Set default irq affinity in plic_irqdomain_map()
>   irqchip/sifive-plic: Setup cpuhp once after boot CPU handler is
>     present
>   irqchip/sifive-plic: Improve boot prints for multiple PLIC instances
>
>  drivers/irqchip/irq-sifive-plic.c | 21 +++++++++++++++++----
>  1 file changed, 17 insertions(+), 4 deletions(-)

Thanks!  Aside from that parallelism question this LGTM.  IIRC Marc picked up
the last round, so I'm assuming this would go in through his tree as well.

