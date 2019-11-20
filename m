Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72D131035C8
	for <lists+linux-riscv@lfdr.de>; Wed, 20 Nov 2019 09:04:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4vsDWwGWVswN/l9IsretJtwJTKPQBSNGG3M+WGfwUWI=; b=Rb6Z4gg2nH/KyW
	i36dqWIxRJwJ2nP9npdVG+RqPocDR0YBryPJ9gBljFhGTv0nS1SfdXeQY6bL7IpB5fwK/C77VJTNJ
	22sXbmD8bikY9Hoshubl1nQX1vFv6kMepYmXVvksPzMetQF6xHWCtLw431gfQNKipoHP/KHpTto+V
	5odgaRfUvEUgYLlSW+KIrorjxhzyC1ZH7cCbsa0FobgNEwXWmI7mMhEaCkxo7FIqN1pkQeTCMUTY4
	d8veIL0VZMe85O80s8J7iaC7Vlz03zG7r97Sk1hgDiFMQPKyAUdVavlMFMFyWK7PHbBqDN9NFhLBT
	PvNIgbRofBXDU6nGLWsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXKyJ-000242-Ht; Wed, 20 Nov 2019 08:04:19 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXKyG-00023I-CK
 for linux-riscv@lists.infradead.org; Wed, 20 Nov 2019 08:04:17 +0000
Received: by mail-io1-xd41.google.com with SMTP id k1so26615746ioj.6
 for <linux-riscv@lists.infradead.org>; Wed, 20 Nov 2019 00:04:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=BacJ7EBR9ytS2/6OwHcGzjIg710Zu5B5M5aCR72bJWA=;
 b=VO8JDuiYDFx9cSL5SqJK3STzGgAjyrHydkFR2rL2wLLXNbBFnDHTepn7fMtUJpbe4E
 obnzLYzJIX2DCUk7C9YHLXU+G/1wcpLygGrJzo4jNx1u9lQjIztdjytuGSy8eYhTw7xO
 FJAdNaw27IoeGn1j3JYhZNcTVl1HUxjR62WpPXz9x2KYxe+Wh7ujofcnk4UlKbm9EThJ
 4ltquqg9ml2N8qlVXt26KMAokZAyaFR0pjwaQmFfZC5vVWS5bnQ/9I+2WYKOL5KpV6vj
 L44Q1Om9Kbq0JPnB6E0RsIhuJOl9iQ+syl0zVUoU/MXq4vVI6t+72g1afJuZlmB060iZ
 a+1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=BacJ7EBR9ytS2/6OwHcGzjIg710Zu5B5M5aCR72bJWA=;
 b=sHmDtTlTygJ+F/D6nysSHhCXAYRiuJ7W3GoLwgcFrMVvA5j5Vmbr1JSg/8qMUZw+7x
 izflQJk0mpIIp2WkoKIZneIfCsQpBTA4L3oO+zsiKbSFRdP9WatNrIt9TRBEx9UXJl6G
 qaJCgqw/vrcJPx/qENIN/C7RDLlEpHfyVLP3nGNcmgYNLBCQeTY5GVQt5/he6mo5N1s8
 DR2HeztavR+/SapDEsnJi/Fa7aqJ0QngDBjisD1Jrjqzlh7MjUucoKjQRjA7A+n2KUSP
 PXBAQdIrQTzdVBBinuJ4SCgUiF4aUvQ1+gi40zSHy+tF/Syw8IGvpdp30eiLKBe9YAMH
 eaSA==
X-Gm-Message-State: APjAAAU6f9LCW4ww8cKC0EouhjilwfY12cQZ8Esgz2SEmuU+GHSD7Ozp
 2ougBwPqPTEaDJLVWN5k07aNKw==
X-Google-Smtp-Source: APXvYqy+717NLJlVd20jJMYLKR/1De7mJqNFF+/oYOiwoN3AGBAq1ytMXqic/gdugH11qYE0ztUcQg==
X-Received: by 2002:a5e:a70e:: with SMTP id b14mr1088130iod.166.1574237054759; 
 Wed, 20 Nov 2019 00:04:14 -0800 (PST)
Received: from localhost (67-0-26-4.albq.qwest.net. [67.0.26.4])
 by smtp.gmail.com with ESMTPSA id a11sm6274182ilb.72.2019.11.20.00.04.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Nov 2019 00:04:14 -0800 (PST)
Date: Wed, 20 Nov 2019 00:04:13 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Anup Patel <Anup.Patel@wdc.com>
Subject: Re: [PATCH v9 03/22] RISC-V: Add initial skeletal KVM support
In-Reply-To: <20191016160649.24622-4-anup.patel@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1911200002310.490@viisi.sifive.com>
References: <20191016160649.24622-1-anup.patel@wdc.com>
 <20191016160649.24622-4-anup.patel@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_000416_498474_91E868A3 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alistair Francis <Alistair.Francis@wdc.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Radim K <rkrcmar@redhat.com>,
 Anup Patel <anup@brainfault.org>, Palmer Dabbelt <palmer@sifive.com>,
 Damien Le Moal <Damien.LeMoal@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alexander Graf <graf@amazon.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi,

On Wed, 16 Oct 2019, Anup Patel wrote:

> This patch adds initial skeletal KVM RISC-V support which has:
> 1. A simple implementation of arch specific VM functions
>    except kvm_vm_ioctl_get_dirty_log() which will implemeted
>    in-future as part of stage2 page loging.
> 2. Stubs of required arch specific VCPU functions except
>    kvm_arch_vcpu_ioctl_run() which is semi-complete and
>    extended by subsequent patches.
> 3. Stubs for required arch specific stage2 MMU functions.
> 
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> Acked-by: Paolo Bonzini <pbonzini@redhat.com>
> Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>
> Reviewed-by: Alexander Graf <graf@amazon.com>

Olof's autobuilder found an issue with this patch (below)

> diff --git a/arch/riscv/include/asm/kvm_host.h b/arch/riscv/include/asm/kvm_host.h
> new file mode 100644
> index 000000000000..9459709656be
> --- /dev/null
> +++ b/arch/riscv/include/asm/kvm_host.h
> @@ -0,0 +1,81 @@
> +/* SPDX-License-Identifier: GPL-2.0 */

This should be

/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */

to match the license used in the kvm.h files in other architectures.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
