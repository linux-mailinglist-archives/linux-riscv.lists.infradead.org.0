Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A78D7EFDA
	for <lists+linux-riscv@lfdr.de>; Fri,  2 Aug 2019 11:05:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XSiF1V7n+nWbC4uIp/1CWMQKIvZuTWC/rVLjYcVCvHw=; b=cZM2HtnLDk+v5L
	sKLExHjsBYDWpN+lfDSJj3p46f7IhECf9edjp0BGvkrALTDfCfPiaPGU3FEaZWUtaepZ5V+b9Bcta
	QBFk+5dvr5FEHvZRgCFsOOVO2yKeOM3lC8sUb2gehkhvKbQq08QJ592uQOJfM4pimVWA4vVU8CAfN
	NAk8lQ/tbuPs/+DHlRdwy2OeWrcrZ8Z57TJtizI+zWc/dSeWRYkLffyYZgiFji2ZYAo/5Zq4jB63d
	LebVNnCYIO+pRaYrfFYm3vRP47+g01d/WdlM3sb4NfL27b0TUPpRSqyGVzcFE4pJZTzkqmpYZ8Aha
	W2vIhEYEK1TBPRKyLrfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htTUy-0007s8-Ap; Fri, 02 Aug 2019 09:05:16 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htTTW-0007BR-Pf
 for linux-riscv@lists.infradead.org; Fri, 02 Aug 2019 09:03:48 +0000
Received: by mail-wr1-f67.google.com with SMTP id r1so76332080wrl.7
 for <linux-riscv@lists.infradead.org>; Fri, 02 Aug 2019 02:03:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Bwx8/3+omec7zmijOtKif9DQxXapLJoupah+QfmoXjM=;
 b=MxrPtL5mItVk+vDamBeOp3QdRvR5WslHYIgTz9PyJve4oOi03U9foPV+2RLsa4IGcm
 7P5RlGJ0qi/ZyAd7cZH14maKFSdB6NjHQxIf5gOLJNp8/6NSemSiEAEse1H1AnVri2is
 gi0/e6th/ESv8ErbEz+AgQddEkhe8gAaAdkuh/Tx9PXJE4t5a4pfwtcsIjctbJPwGspL
 OFkP4H1OxKvY2mi8cdlBqCoReh1GlE3KCI9UJf53dhyxpn1/tqMlqCQmUkato6Xf8fIS
 5I5Z+ouiXFToLAGjaGa7ho6g2GBFnWy5KtJD/ycavqkJu6uu+DajLAs6okuVNKYdIKmC
 1VUA==
X-Gm-Message-State: APjAAAVzpisYiX6gAHt8QfumtGyFUV4q6lqzPBLM8Bks1RiG7Ut5hbam
 hIA+c/S0ysZ55pacESk+heb3lg==
X-Google-Smtp-Source: APXvYqzL/HKYIOOtRRO6u1IKHQOTKAtJRMqcFBTlwICbd/6fS4zdHbTSm6by+RvwTllnE7+5D6q80Q==
X-Received: by 2002:a5d:4e02:: with SMTP id p2mr36191018wrt.182.1564736625330; 
 Fri, 02 Aug 2019 02:03:45 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:4013:e920:9388:c3ff?
 ([2001:b07:6468:f312:4013:e920:9388:c3ff])
 by smtp.gmail.com with ESMTPSA id c30sm140911490wrb.15.2019.08.02.02.03.44
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 02 Aug 2019 02:03:44 -0700 (PDT)
Subject: Re: [RFC PATCH v2 07/19] RISC-V: KVM: Implement
 KVM_GET_ONE_REG/KVM_SET_ONE_REG ioctls
To: Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Radim K <rkrcmar@redhat.com>
References: <20190802074620.115029-1-anup.patel@wdc.com>
 <20190802074620.115029-8-anup.patel@wdc.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <03f60f3a-bb50-9210-8352-da16cca322b9@redhat.com>
Date: Fri, 2 Aug 2019 11:03:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190802074620.115029-8-anup.patel@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_020346_947890_CB0B1253 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
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

On 02/08/19 09:47, Anup Patel wrote:
> +	if (reg_num == KVM_REG_RISCV_CSR_REG(sip))
> +		kvm_riscv_vcpu_flush_interrupts(vcpu, false);

Not updating the vsip CSR here can cause an interrupt to be lost, if the
next call to kvm_riscv_vcpu_flush_interrupts finds a zero mask.

You could add a new field vcpu->vsip_shadow that is updated every time
CSR_VSIP is written (including kvm_arch_vcpu_load) with a function like

void kvm_riscv_update_vsip(struct kvm_vcpu *vcpu)
{
	if (vcpu->vsip_shadow != vcpu->arch.guest_csr.vsip) {
		csr_write(CSR_VSIP, vcpu->arch.guest_csr.vsip);
		vcpu->vsip_shadow = vcpu->arch.guest_csr.vsip;
	}
}

And just call this unconditionally from kvm_vcpu_ioctl_run.  The cost is
just a memory load per VS-mode entry, it should hardly be measurable.

Paolo

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
