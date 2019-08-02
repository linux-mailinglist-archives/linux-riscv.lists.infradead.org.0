Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA377EF51
	for <lists+linux-riscv@lfdr.de>; Fri,  2 Aug 2019 10:30:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=llbgZBboreu4Rfw7N+eFJkgOU5eTvkJwsi5IYrNm+WM=; b=rV31/6eZ6UanAL
	BOoJjaX0Wb9IE+4rWUovsXytHS0QWbqJnQe8peWzwY9zYVZYHT2WMgLiHDEe2AYzEPERV70WxFd4u
	kDojBbcUIYfj4BYJ3XBSmES2cvWjny8q0tcAM9GwcKIsuWno0g3utzvunC2ZBYsEbgMo04s7DQY+X
	NCIt0kFDKLPc5hApZF20xFrJumrMx68y7g0YnxwGLt+8HFr804uy0BsUsZhRXb4CBo/lcAwlBbOqt
	EeNkEUy6YP6EsGESr1c8nnNzNO87JqxrY+ag2FlVbvWnTIa/N7Rur62DJg9g4QEFrr1O+0lXiQtCI
	Cn3fXSFevCxBYFwnX17A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htSx7-0004XU-Ju; Fri, 02 Aug 2019 08:30:17 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htSx3-0004X9-EK
 for linux-riscv@lists.infradead.org; Fri, 02 Aug 2019 08:30:14 +0000
Received: by mail-wr1-f67.google.com with SMTP id z1so76244776wru.13
 for <linux-riscv@lists.infradead.org>; Fri, 02 Aug 2019 01:30:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+MjSLRhTHy/z+LM8sRLnyEruabbpzZhCsOii1dxVU9Y=;
 b=TEztmMHPo6G+pDU1pNwgDCfL0kIe/yFMWCPJ0MkEgT0PZXEI3UdcUN2s9/Vvnh7S9w
 XOCNX8CNQQUbS60z9dhqhxoJdHe2jdfwyVjNwJDubkKz5m4XTWYX6dftLPe9PuFNg4wY
 /9Bs0jBUsh38Lduw/edwDOEYx44avD0NPs54iw8co8NH4QYhMMHr1lo6sU9Gc2q9n9lJ
 QCzZKOMuq9ztHRdW2t5ZmO8WTuSP5M9xc7rQrbco/Yght0nOT9pJhKVvpsE+zK20dkX7
 v8U/DTsCFIBrZlmcQikisihhRHf73RtH6H/qERPfbhhkL8OQ+lKZOz2LQYOINSA26nPp
 Fy8g==
X-Gm-Message-State: APjAAAWvJTm5ju/+N0OJ6A63pKwm2j7bm8OqpnErTjcGt5LVU1grifIy
 I6Rgo7Mv+baCZCUaIOmK4cyxoQ==
X-Google-Smtp-Source: APXvYqxQ8H0EwfjmiYP1/SUacCSArAMVaY+7Hsw2aimu6rkqpcHBrjydXWxpNn5htwW5YM1MsKxGqQ==
X-Received: by 2002:adf:dcc6:: with SMTP id x6mr117116586wrm.322.1564734611723; 
 Fri, 02 Aug 2019 01:30:11 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:4013:e920:9388:c3ff?
 ([2001:b07:6468:f312:4013:e920:9388:c3ff])
 by smtp.gmail.com with ESMTPSA id b8sm99851723wmh.46.2019.08.02.01.30.10
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 02 Aug 2019 01:30:11 -0700 (PDT)
Subject: Re: [RFC PATCH v2 08/19] RISC-V: KVM: Implement VCPU world-switch
To: Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Radim K <rkrcmar@redhat.com>
References: <20190802074620.115029-1-anup.patel@wdc.com>
 <20190802074620.115029-9-anup.patel@wdc.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <72d8efbf-ec62-ab1e-68bf-e0c5f0bc256e@redhat.com>
Date: Fri, 2 Aug 2019 10:30:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190802074620.115029-9-anup.patel@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_013013_485242_FFEB48FE 
X-CRM114-Status: UNSURE (   8.86  )
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
> +	/* Save Host SSTATUS, HSTATUS, SCRATCH and STVEC */
> +	csrr	t0, CSR_SSTATUS
> +	REG_S	t0, (KVM_ARCH_HOST_SSTATUS)(a0)
> +	csrr	t1, CSR_HSTATUS
> +	REG_S	t1, (KVM_ARCH_HOST_HSTATUS)(a0)
> +	csrr	t2, CSR_SSCRATCH
> +	REG_S	t2, (KVM_ARCH_HOST_SSCRATCH)(a0)
> +	csrr	t3, CSR_STVEC
> +	REG_S	t3, (KVM_ARCH_HOST_STVEC)(a0)
> +

A possible optimization: if these cannot change while Linux runs (I am
thinking especially of STVEC and HSTATUS, but perhaps SSCRATCH can be
saved on kvm_arch_vcpu_load too) you can avoid the csrr and store.

Paolo

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
