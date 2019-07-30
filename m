Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 663A87A342
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Jul 2019 10:44:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k5TGGuMjTk8ShssoktvicEO/FXTukJD3XqWQSoUaqds=; b=it+Na7JyNjfAjH
	ND/zOaWdwnyl5+03iBjYEkUfZHMiIsxMVp7rLTIvG0UyiqfNZkO64YnQvq1o7zA5WUoFQmvDYVoxO
	LmNF7nHF4R+8xuZ7wEY9UgSQh3LQd8WvJ+i2cnJ6ZwgpTRN5V13/xmjR+etgVUJEY1JdP0f4nQLqk
	IGqaN7v4aZEt/Dd96byLCPSCcwxIlxwszWcxuNeSR1j1/6p4xcbHNjCgioLHPsUeIA2zY2Y90kznr
	cLnGCdF/AxzgOymXeseIIh5nkowBPqwi5bITJ68/plXLX4XRhegFTf8cAU0Dv1JaZUAdYrajd11rt
	y3vGdSnjoSz8zXI5ZIJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsNjg-0000jU-EI; Tue, 30 Jul 2019 08:43:56 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsNjc-0000iz-TF
 for linux-riscv@lists.infradead.org; Tue, 30 Jul 2019 08:43:54 +0000
Received: by mail-wr1-f68.google.com with SMTP id n9so39712412wrr.4
 for <linux-riscv@lists.infradead.org>; Tue, 30 Jul 2019 01:43:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=OKR3QlVurOR6Gm48332ZWWebgWYH2Zh0VKVpzZimroE=;
 b=p+kUJiZqeFlSxO0i7jDUkcNCMiqbcpDuegiEc7sjPGWWrhmy0odnhcMqN9991hZ9N+
 FgppRvCXBHKy566CmykD5zJl6XLvCRugyeYGYOAEFO+noLFGhxo0KSvn2xAJTWdIGTEC
 sUw0Z6Xs9FxAhgZtqEnDqvzms7rHOYv77CJeo+N/1lzMzBv2EZ7t9JmSM1i/u83TSoMA
 4pVgt/WCr1M2TEbuj2awhmM9FFZYG/I7t+TEzeLZPDSgmIzud0YApxKHZbcR1gW7CdQi
 /rvtg0Tz7ve3UETwb7zhPM/IG+IiROcOwrEQvDAwH8Y6zif9N0Ey5hMzb8qXxC6/YiiY
 PGuQ==
X-Gm-Message-State: APjAAAU8vFd/104Y28qCNeqaM+Xjv2AT35c3uzLyffmOlpW1Ys3lebHm
 he+PNmLgkvysdE5tnnXSLpPo0w==
X-Google-Smtp-Source: APXvYqzgTuWikIL4H6O0gthhwCoTiNJf6weUuD0qK1XMCURLTfCQZKU3zgmP7+7VU5FOQIvoP3Pgnw==
X-Received: by 2002:adf:80e6:: with SMTP id 93mr88188887wrl.298.1564476231141; 
 Tue, 30 Jul 2019 01:43:51 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:29d3:6123:6d5f:2c04?
 ([2001:b07:6468:f312:29d3:6123:6d5f:2c04])
 by smtp.gmail.com with ESMTPSA id d10sm75314371wro.18.2019.07.30.01.43.49
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jul 2019 01:43:50 -0700 (PDT)
Subject: Re: [RFC PATCH 06/16] RISC-V: KVM: Implement
 KVM_GET_ONE_REG/KVM_SET_ONE_REG ioctls
To: Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Radim K <rkrcmar@redhat.com>
References: <20190729115544.17895-1-anup.patel@wdc.com>
 <20190729115544.17895-7-anup.patel@wdc.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <3caa5b31-f5ed-98cd-2bdf-88d8cb837919@redhat.com>
Date: Tue, 30 Jul 2019 10:43:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190729115544.17895-7-anup.patel@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_014352_947743_E12D1CCF 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
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
> The PC register represents program counter whereas the MODE
> register represent VCPU privilege mode (i.e. S/U-mode).
> 

Is there any reason to include this pseudo-register instead of allowing
SSTATUS access directly in this patch (and perhaps also SEPC)?

Paolo

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
