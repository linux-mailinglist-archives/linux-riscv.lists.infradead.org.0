Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D1E57A447
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Jul 2019 11:34:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m/c46i3ZSclR+V7j/WhzexsX8c8YKMERcHtO2LfNOp4=; b=t8f8/XCwPQNe7X
	YRCZx7VgKm4H7FrfULolvhQXippi8zm1ymwLiqBV8CZEgeZbHDGmi0vcLVRhuE9FopqMYKrM+zk/f
	yj/sq+U7NGCDBHnm03l5v1THdWdpPtVQKyUjI5YYNqfD5pJ/iBS/qow6ULGcv6N739jC5iQ9vBW/V
	z0HQ9eB5x4Z/1Z4wfv6L1ufZ7AGf5vr+Noxp4xKIv0UdxnW71vAPRjk8d/Aj6qqDPVw4UeuiEtzjx
	dLve0m4eoZZWkSJ/bwJ+X1LgSODa19PNPjVmZnEKU++Tj5R5qLKLB0i833u+kAMaa7oyrDcLReT/w
	v8O7wrCofoNxxyeQYSHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsOWg-0005MP-N5; Tue, 30 Jul 2019 09:34:34 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsOWd-0005Lg-NH
 for linux-riscv@lists.infradead.org; Tue, 30 Jul 2019 09:34:32 +0000
Received: by mail-wr1-f67.google.com with SMTP id g17so64982612wrr.5
 for <linux-riscv@lists.infradead.org>; Tue, 30 Jul 2019 02:34:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=CokP5DJZX8fcTdu2V8k9QUz5XnfVM2mfkMJryb9GY0Y=;
 b=oaSKiOrbTi0TkIrjEhYO/9yshQeRjORtE6J8/+oH1JnAFiVVlg5+WIItBE5iDYJFJG
 qRV5L6sPAkRT+I1c5kpgEahBhUzvv8Rt0asTVETdR9pev8x+6Z8Onm/CmxO0w0XoLts0
 wE56jtErxuETjAjAT5AcYPP+CBLMlCW2jY4Ozo/wbqqbeeIA5khOQCN7P5pxgvXyhv9/
 rZnxrS0O2AtTrxmiyip6SWoR5F+2MaMpHuNIQZ962i5grrSh4JO1+HCa8cigK6VCWIPx
 D3ZgmAhd3veabyAmHHlOQTA/inzKwVKc2n3vF5wPqrffJaaCl1MF/h14NXOjw+MbsS8e
 Wb6g==
X-Gm-Message-State: APjAAAXYSnMlUA8e8LfUbEkP8cYtN8H4FeiAjYxGtMPr0qlg39wJvM8T
 W5VGEvjTRbdXtQdIEiFRgdMrIQ==
X-Google-Smtp-Source: APXvYqzBErq4zKQr1w1EtdBj7vtFUGW/B8UZMe8PqrMcUaUa6/Cp+PqL1mP0K4OpT6sybWId8GYeHg==
X-Received: by 2002:adf:e444:: with SMTP id t4mr25964034wrm.262.1564479270468; 
 Tue, 30 Jul 2019 02:34:30 -0700 (PDT)
Received: from [192.168.10.150] ([93.56.166.5])
 by smtp.gmail.com with ESMTPSA id j16sm6519552wrp.62.2019.07.30.02.34.29
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jul 2019 02:34:29 -0700 (PDT)
Subject: Re: [RFC PATCH 07/16] RISC-V: KVM: Implement VCPU world-switch
To: Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Radim K <rkrcmar@redhat.com>
References: <20190729115544.17895-1-anup.patel@wdc.com>
 <20190729115544.17895-8-anup.patel@wdc.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <cbb1b995-be2f-96a5-9890-63e1941e7f3c@redhat.com>
Date: Tue, 30 Jul 2019 11:34:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190729115544.17895-8-anup.patel@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_023431_761612_C4504E1F 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Anup Patel <anup@brainfault.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 29/07/19 13:57, Anup Patel wrote:
>  void kvm_arch_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
>  {
> -	/* TODO: */
> +	struct kvm_vcpu_csr *csr = &vcpu->arch.guest_csr;
> +
> +	csr_write(CSR_HIDELEG, csr->hideleg);
> +	csr_write(CSR_HEDELEG, csr->hedeleg);

Writing HIDELEG and HEDELEG here seems either wrong or inefficient to me.

I don't remember the spec well enough, but there are two cases:

1) either they only matter while the guest runs and then you can set
them in kvm_arch_hardware_enable.  KVM common code takes care of doing
this on all CPUs for you.

2) or they also matter while the host runs and then you need to set them
in vcpu_switch.S.

Paolo

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
