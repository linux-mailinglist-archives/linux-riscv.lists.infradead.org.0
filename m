Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B9367A403
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Jul 2019 11:25:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ousuP1BZI8tb8ivVCxrCw0BeHVqIL3SyNboY7O+p2M=; b=S4emUzvdImfbVi
	tu7MHpfIviAMASwdLkHT1GOsNp2nczn8vzIkbXWD+XXoPCtulaJRB7QuMyxcABSrGkS830lRjX6AJ
	a/Ype4TWDB2728JDivMt8EDTf8CVF14m72OIUoqu2ECk8fACIfw+yDzo1gMoyByepAAW7By6CmwS2
	8mQTA1SXcwazHSWntC/BOjJkiQHtUs3MSInylo+6RJpGUTZ0BpNvm6JktgB4R5MIu0YOVsz8Ri+Bz
	mymIR7XvfzigssazAL/brWC5u5Q8YESbpNq7vM62FoVzYdhAfZq9p5suLWbsZoF14UFj20P8EFFBV
	vvu++0abJ+/f/OauNJYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsONv-0002e7-Ua; Tue, 30 Jul 2019 09:25:32 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsONs-0002dd-Q1
 for linux-riscv@lists.infradead.org; Tue, 30 Jul 2019 09:25:30 +0000
Received: by mail-wr1-f65.google.com with SMTP id z1so64919390wru.13
 for <linux-riscv@lists.infradead.org>; Tue, 30 Jul 2019 02:25:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=cUzWE80r0+/Jm/PmpREfM87NZ7CTSmB2MTbi4J4MfgQ=;
 b=SCEmG6iO0hfeTyQNvv5jHXAPIkE3Wtlc4f/kdCgsT7z9MhJk1YOfcxkT/YnSIAG1h7
 WD0dBi9qhZ/KLzcBV9NzXkd/Xlb82SOy1OlQ2i7aRBtzeDGUPpo0y93qznJBarC4dI6c
 +45miVMXOy4OGn3ZEmt9ZcTTuhFVYs6YKnMbLXi2owQVb++8qEHePgY+eYZVAFhwKP4M
 1pFSOskOVi0SKJCuuEuIBV1yxzRXTV177VasL6H3j6nraUMoeffotzcFkcIgReuk3KnE
 lnTE2Es+siL6Woc3G9fusaL7l9LbPsyXxKf6cwcm8mwiynEQFrTOV0nXP3JUXEabYl9e
 fzyA==
X-Gm-Message-State: APjAAAW3lrT1sS2QIMfMflR7OSAkvCUJfsoO6k6ShqGHoseOs7HAsn2v
 HYV5LXlPAHglmH1gTr4Vo2XVnA==
X-Google-Smtp-Source: APXvYqz+F0XEhEJWXPXqrEBWvnNsKyL98ooHfR6J44rQZTpHYL5dhBASE4lu+y3QS4SD34KieOnK3Q==
X-Received: by 2002:adf:dd8e:: with SMTP id
 x14mr124398481wrl.344.1564478727541; 
 Tue, 30 Jul 2019 02:25:27 -0700 (PDT)
Received: from [192.168.10.150] ([93.56.166.5])
 by smtp.gmail.com with ESMTPSA id o7sm34682654wru.58.2019.07.30.02.25.26
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jul 2019 02:25:27 -0700 (PDT)
Subject: Re: [RFC PATCH 03/16] RISC-V: Add initial skeletal KVM support
To: Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Radim K <rkrcmar@redhat.com>
References: <20190729115544.17895-1-anup.patel@wdc.com>
 <20190729115544.17895-4-anup.patel@wdc.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <d1157450-258b-91c1-72cb-867c96f929d8@redhat.com>
Date: Tue, 30 Jul 2019 11:25:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190729115544.17895-4-anup.patel@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_022528_846996_D79CEA84 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On 29/07/19 13:56, Anup Patel wrote:
> +void kvm_riscv_halt_guest(struct kvm *kvm)
> +{
> +	int i;
> +	struct kvm_vcpu *vcpu;
> +
> +	kvm_for_each_vcpu(i, vcpu, kvm)
> +		vcpu->arch.pause = true;
> +	kvm_make_all_cpus_request(kvm, KVM_REQ_SLEEP);
> +}
> +
> +void kvm_riscv_resume_guest(struct kvm *kvm)
> +{
> +	int i;
> +	struct kvm_vcpu *vcpu;
> +
> +	kvm_for_each_vcpu(i, vcpu, kvm) {
> +		vcpu->arch.pause = false;
> +		swake_up_one(kvm_arch_vcpu_wq(vcpu));
> +	}

Are these unused?  (Perhaps I'm just blind :))

Paolo

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
