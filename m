Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B02B17A6E0
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Jul 2019 13:26:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w7pv65DFFH6rO/u5td0mzNdmdHbFpoIKbCCTAs0JqYI=; b=dA8PLMTUydomx+
	dHMYKnqWP1yKCdbQoPtgrzGcmQgVa2i66dNHIn+6fq12crZbZZReH7ahoGGnE84RhwLD8fYbcYzFE
	xPQ8n8PmPBDW38Xu3n4giaoEPQ0F4z2AW5Twz4MAh4DGM5tFjO9CeJT3n7pA2xml0ut1y6pLbXkmE
	wxA2ks9HRL0mgYWrajDz/yFhrQ5g+NqC8obOuX43MRdOtJuUmE50aRBYRke/VNSzrslVvsqM0zNLX
	Yx3H/qSwzgSTFmK9Hu0xkYMSxewVQBhYJNS0w7OxEgQgUtUFzXAFDrBpgUgp/059VCafiwsfVYgy0
	axjj8P+QhGd+Svr3w4ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsQHF-0007bI-QP; Tue, 30 Jul 2019 11:26:45 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsQHC-0007al-OE
 for linux-riscv@lists.infradead.org; Tue, 30 Jul 2019 11:26:44 +0000
Received: by mail-wm1-f67.google.com with SMTP id s3so56768298wms.2
 for <linux-riscv@lists.infradead.org>; Tue, 30 Jul 2019 04:26:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=zRulNL5qCAi/81YynxGrimpN6FxyJ33F7yQYkhCyZlk=;
 b=WEj4FeqAi/IoEaxbce3EDcA6TQoe09lB5mhZgO19c2MOiYeOMSvAKIlmq3EtX0CM5N
 5zVnU8A4O+6M36vOl4XbanaYlOIuBjxG0HVwiJEJF3pumyEvtlpL7tQNR8oBesFFUVU5
 s9uHCZUWv0+4nJBvpZ95dMHDNnOU4TDGyFqDizd6O6m0JFQx+LMdyhfRP3UDhs1giI9P
 o5PRixJHCTnJ6CaNk2J4Y3rIjcygqyEM7sphK9eKvrhLk3fd1MCnu/GMbhUXdNjwF7A+
 4NlwQXxdOUkoY38A7uwi9QIno4PImu8BSfFdg/Lxv3y+qaV1nOqCnuaKgTJJ0i3M0jtd
 Sn8A==
X-Gm-Message-State: APjAAAXUtkowIJB78rU3JZXRVFkRghkBhq05nAm24peBqruxl/h2nM6g
 z6Atm4Pf7RIjlkqoAPj5D7uxB3hMjYE=
X-Google-Smtp-Source: APXvYqxo5UHLG3tyCvJ9QKdkC6ZVQFG9DiXwMjRxFm5zOjg0AFUbgZKXZO3dtvVP5tdG02WNBFwMlQ==
X-Received: by 2002:a1c:e009:: with SMTP id x9mr103306392wmg.5.1564486001151; 
 Tue, 30 Jul 2019 04:26:41 -0700 (PDT)
Received: from [192.168.10.150] ([93.56.166.5])
 by smtp.gmail.com with ESMTPSA id 4sm146590471wro.78.2019.07.30.04.26.39
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jul 2019 04:26:40 -0700 (PDT)
Subject: Re: [RFC PATCH 13/16] RISC-V: KVM: Add timer functionality
To: Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Radim K <rkrcmar@redhat.com>
References: <20190729115544.17895-1-anup.patel@wdc.com>
 <20190729115544.17895-14-anup.patel@wdc.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <abedb067-b91f-8821-9bce-d27f6c4efdee@redhat.com>
Date: Tue, 30 Jul 2019 13:26:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190729115544.17895-14-anup.patel@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_042642_791211_9CB75C66 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
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
> +	if (delta_ns > VCPU_TIMER_PROGRAM_THRESHOLD_NS) {
> +		hrtimer_start(&t->hrt, ktime_add_ns(ktime_get(), delta_ns),

I think the guest would prefer if you saved the time before enabling
interrupts on the host, and use that here instead of ktime_get().
Otherwise the timer could be delayed arbitrarily by host interrupts.

(Because the RISC-V SBI timer is relative only---which is
unfortunate---guests will already pay a latency price due to the extra
cost of the SBI call compared to a bare metal implementation.  Sooner or
later you may want to implement something like x86's heuristic to
advance the timer deadline by a few hundred nanoseconds; perhaps add a
TODO now).

Paolo

> +				HRTIMER_MODE_ABS);
> +		t->is_set = true;
> +	} else
> +		kvm_riscv_vcpu_set_interrupt(vcpu, IRQ_S_TIMER);
> +

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
