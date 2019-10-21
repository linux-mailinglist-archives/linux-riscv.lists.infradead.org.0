Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09AB1DF430
	for <lists+linux-riscv@lfdr.de>; Mon, 21 Oct 2019 19:29:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZCX9QbXIUwkmZVscmOvBKto0ELNB5P41+cqhBHmBvGk=; b=nHN2RILS1NjSmh
	QhfV+lJ1eHfL9OicWAscyxVis2ohEkc+X5nEEhADsInMg389cw8n2rU3aMmm4JvTQaHpc3oVGN1iU
	C9CqPnnrhPfEYIq6y4vroFwLTcEmXT/yVJir85VK75RRYgiOYW5h/ePFO1nHbGD8Nimumk2UPWYA8
	zWXCdNFrQ5THkQ1WqnKn3dhoxsNkXEEWB+kCFvv6luKrHg7o8xQrgGUWP9FlZCxhQUyeXthSKGuJp
	aNPYBej7x9LD4imkeJKI0YvTr7z+KA4A1MIqHFPEuq3kREtvECyUxXdiqbYuWVMwbnwsZQcFN+bHp
	abQIoOHUHKLWHV92JGGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMbUG-00082a-Hs; Mon, 21 Oct 2019 17:28:56 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMbUD-000822-E1
 for linux-riscv@lists.infradead.org; Mon, 21 Oct 2019 17:28:54 +0000
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E55FB368FF
 for <linux-riscv@lists.infradead.org>; Mon, 21 Oct 2019 17:28:52 +0000 (UTC)
Received: by mail-wr1-f70.google.com with SMTP id 4so3514405wrf.19
 for <linux-riscv@lists.infradead.org>; Mon, 21 Oct 2019 10:28:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=lvbEIhN+KLA5G34KXJDqPu7aWF/7PZQEg8je+IqEmF4=;
 b=i6/phSUlbFlJzHdQ+run9HDIW6CsLgsItJRR9MiCvT7bYmjiJA4UQIvy5JnxkPVf4g
 dpZ4xDZBWbFcmPnqOpRXB1eDnWpEyzgwlbX/9zUpzd/beMITXjqxdy4blzYUHRDhTBKD
 M0D7igfCGM3kDIDhuGrwjW/oPJ/jQEoaL+UIMLQyXmZtAdegEeqUaw+mbtMjPpXLdIJ5
 coFmKrdn+6r7tzlWIRWisF8CtC/KowP0ilZzUFjz0G8p9mhOprcMSw5WDhDmgxJx9puG
 iYAfYnKj7YsY4N+Ygz47Dg/trAl0/N/pThh+oFBTbm5rbITsHCs1q5FO5KkENbvplwe9
 6VuQ==
X-Gm-Message-State: APjAAAU3K38S4xvgW6Ds9w0/LF1H2dUaEBE9mkecmdMagfH0eTGC2VHo
 twy6XbJBiLFkeCRJoxU41hEj0zMvXsZCP5MFmGe0fZRdkKM6JqrDxi9LmwB1+0D7Y9mr8DGZDP8
 5cYevQNHXWbxlc7mNApwVkHqED0oR
X-Received: by 2002:a7b:c019:: with SMTP id c25mr1082376wmb.61.1571678930586; 
 Mon, 21 Oct 2019 10:28:50 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxwIY/tsn9uA9I4YLp+kutIvQ8m7k5EbCTYWNNxxsB8jxi7jQKxpiLSQwcr3cxvYqwoNSRLVQ==
X-Received: by 2002:a7b:c019:: with SMTP id c25mr1082361wmb.61.1571678930237; 
 Mon, 21 Oct 2019 10:28:50 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:847b:6afc:17c:89dd?
 ([2001:b07:6468:f312:847b:6afc:17c:89dd])
 by smtp.gmail.com with ESMTPSA id a17sm12276159wrx.84.2019.10.21.10.28.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 21 Oct 2019 10:28:49 -0700 (PDT)
Subject: Re: [PATCH v9 19/22] RISC-V: KVM: Remove per-CPU vsip_shadow variable
To: Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Radim K <rkrcmar@redhat.com>
References: <20191016160649.24622-1-anup.patel@wdc.com>
 <20191016160649.24622-20-anup.patel@wdc.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <7381057d-a3f3-e79a-bb2c-b078fc918b1f@redhat.com>
Date: Mon, 21 Oct 2019 19:28:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191016160649.24622-20-anup.patel@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_102853_517159_BEE089E8 
X-CRM114-Status: GOOD (  21.73  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Alexander Graf <graf@amazon.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 16/10/19 18:12, Anup Patel wrote:
> Currently, we track last value wrote to VSIP CSR using per-CPU
> vsip_shadow variable but this easily goes out-of-sync because
> Guest can update VSIP.SSIP bit directly.
> 
> To simplify things, we remove per-CPU vsip_shadow variable and
> unconditionally write vcpu->arch.guest_csr.vsip to VSIP CSR in
> run-loop.
> 
> Signed-off-by: Anup Patel <anup.patel@wdc.com>

Please squash this and patch 20 into the corresponding patches earlier
in the series.

Paolo

> ---
>  arch/riscv/include/asm/kvm_host.h |  3 ---
>  arch/riscv/kvm/main.c             |  6 ------
>  arch/riscv/kvm/vcpu.c             | 24 +-----------------------
>  3 files changed, 1 insertion(+), 32 deletions(-)
> 
> diff --git a/arch/riscv/include/asm/kvm_host.h b/arch/riscv/include/asm/kvm_host.h
> index ec1ca4bc98f2..cd86acaed055 100644
> --- a/arch/riscv/include/asm/kvm_host.h
> +++ b/arch/riscv/include/asm/kvm_host.h
> @@ -202,9 +202,6 @@ static inline void kvm_arch_vcpu_uninit(struct kvm_vcpu *vcpu) {}
>  static inline void kvm_arch_sched_in(struct kvm_vcpu *vcpu, int cpu) {}
>  static inline void kvm_arch_vcpu_block_finish(struct kvm_vcpu *vcpu) {}
>  
> -int kvm_riscv_setup_vsip(void);
> -void kvm_riscv_cleanup_vsip(void);
> -
>  #define KVM_ARCH_WANT_MMU_NOTIFIER
>  int kvm_unmap_hva_range(struct kvm *kvm,
>  			unsigned long start, unsigned long end);
> diff --git a/arch/riscv/kvm/main.c b/arch/riscv/kvm/main.c
> index 55df85184241..002301a27d29 100644
> --- a/arch/riscv/kvm/main.c
> +++ b/arch/riscv/kvm/main.c
> @@ -61,17 +61,11 @@ void kvm_arch_hardware_disable(void)
>  
>  int kvm_arch_init(void *opaque)
>  {
> -	int ret;
> -
>  	if (!riscv_isa_extension_available(NULL, h)) {
>  		kvm_info("hypervisor extension not available\n");
>  		return -ENODEV;
>  	}
>  
> -	ret = kvm_riscv_setup_vsip();
> -	if (ret)
> -		return ret;
> -
>  	kvm_riscv_stage2_vmid_detect();
>  
>  	kvm_info("hypervisor extension available\n");
> diff --git a/arch/riscv/kvm/vcpu.c b/arch/riscv/kvm/vcpu.c
> index fd77cd39dd8c..f1a218d3a8cf 100644
> --- a/arch/riscv/kvm/vcpu.c
> +++ b/arch/riscv/kvm/vcpu.c
> @@ -111,8 +111,6 @@ static void kvm_riscv_vcpu_host_fp_restore(struct kvm_cpu_context *cntx) {}
>  				 riscv_isa_extension_mask(s) | \
>  				 riscv_isa_extension_mask(u))
>  
> -static unsigned long __percpu *vsip_shadow;
> -
>  static void kvm_riscv_reset_vcpu(struct kvm_vcpu *vcpu)
>  {
>  	struct kvm_vcpu_csr *csr = &vcpu->arch.guest_csr;
> @@ -765,7 +763,6 @@ int kvm_arch_vcpu_ioctl_set_guest_debug(struct kvm_vcpu *vcpu,
>  void kvm_arch_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
>  {
>  	struct kvm_vcpu_csr *csr = &vcpu->arch.guest_csr;
> -	unsigned long *vsip = raw_cpu_ptr(vsip_shadow);
>  
>  	csr_write(CSR_VSSTATUS, csr->vsstatus);
>  	csr_write(CSR_VSIE, csr->vsie);
> @@ -775,7 +772,6 @@ void kvm_arch_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
>  	csr_write(CSR_VSCAUSE, csr->vscause);
>  	csr_write(CSR_VSTVAL, csr->vstval);
>  	csr_write(CSR_VSIP, csr->vsip);
> -	*vsip = csr->vsip;
>  	csr_write(CSR_VSATP, csr->vsatp);
>  
>  	kvm_riscv_stage2_update_hgatp(vcpu);
> @@ -843,26 +839,8 @@ static void kvm_riscv_check_vcpu_requests(struct kvm_vcpu *vcpu)
>  static void kvm_riscv_update_vsip(struct kvm_vcpu *vcpu)
>  {
>  	struct kvm_vcpu_csr *csr = &vcpu->arch.guest_csr;
> -	unsigned long *vsip = raw_cpu_ptr(vsip_shadow);
> -
> -	if (*vsip != csr->vsip) {
> -		csr_write(CSR_VSIP, csr->vsip);
> -		*vsip = csr->vsip;
> -	}
> -}
> -
> -int kvm_riscv_setup_vsip(void)
> -{
> -	vsip_shadow = alloc_percpu(unsigned long);
> -	if (!vsip_shadow)
> -		return -ENOMEM;
>  
> -	return 0;
> -}
> -
> -void kvm_riscv_cleanup_vsip(void)
> -{
> -	free_percpu(vsip_shadow);
> +	csr_write(CSR_VSIP, csr->vsip);
>  }
>  
>  int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *run)
> 


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
