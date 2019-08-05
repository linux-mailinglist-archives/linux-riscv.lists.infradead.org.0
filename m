Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C87B817D6
	for <lists+linux-riscv@lfdr.de>; Mon,  5 Aug 2019 13:08:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x2a9TdAHa6vXAn33jRveVkQQRnsPRL0jmgZSE0RoX44=; b=B7o39gcEPVczYy
	Ov56exz7OHIuLEYU3C2iR4y6W7jRgx5KTSJLOEPcHsUXnkue6QMbfxDRW7BJt9TmoyZ56RfLlMKR0
	FJPvQpkrAMhPdo9Bqjak7ibK6BIoARuMJvT2i45prAd0cC+bXjrPjRYSN2a5pu4AaO0sjmX+Z9dSy
	aCHi0AficA8K44LY1+Y5jqdjTdPeltscVfPtJTjWdAUwyxF4PQx4t8Ay9iSzW8idyjqs0kXML7fN2
	HUAzdcrzsxv2dT2EN2Hsh5zfVwTVjH924ypCc/U5tdLlyQYwMrkeRDM8etuIlV4MK5V7wXFF2pZBu
	aP0T26Czj1UG6cXhyxrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huaqG-00034w-T6; Mon, 05 Aug 2019 11:07:53 +0000
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huaqE-00034V-BR
 for linux-riscv@lists.infradead.org; Mon, 05 Aug 2019 11:07:51 +0000
Received: by mail-wr1-f66.google.com with SMTP id n9so84093146wru.0
 for <linux-riscv@lists.infradead.org>; Mon, 05 Aug 2019 04:07:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=jbcOsE9b8vLYsdBbVt92rvn4fVfUC3MaKB8N6ShV3KU=;
 b=RtFBLcB4AT/fYb+YzUgnVDmCtKvwHgMW/JK5J25gpNa7Dzbn6EeyYmDhtEf6RM4YdR
 dwveVVjsTxmRhl+HOjO2hEA6kU/xSbAaJtNRGqJ82Q7SaQzHJ4HeQbG7qu0y8zR5Qd63
 fj/R7tkqBecSaHf4KE2PPyyK2gFXyhk85LtcuMClFgUhEzXfFZm68cBb6L9iBRl5epSa
 cu0R5OuIwWJKROGlHix8pd/Q8lq16pSrSGB6T/RIiy8kaSxNu5lMhfEf/RdL9gmrVzgG
 O7dkF1feQqL1L1gOnSYmP03zt6qJeRat/ul4nEfyuo6EwKS1d2G+gDcC32nCywnpmDuk
 Tq5A==
X-Gm-Message-State: APjAAAUpymFT5AUBQaa6vIku3aqIpcoDIWTBECWL+gwrAq6heufsamUP
 RjTNvAe3G5oMX0PyPM2YrZzXNQ==
X-Google-Smtp-Source: APXvYqwY2TBupRh8lLMErANvtlHmxHCz+tcgLZffCnKnX9W2SmLjysi6ybgwKxpN5XbDXgTAKzNV8Q==
X-Received: by 2002:adf:e541:: with SMTP id z1mr68507743wrm.48.1565003268629; 
 Mon, 05 Aug 2019 04:07:48 -0700 (PDT)
Received: from [192.168.178.40] ([151.21.165.91])
 by smtp.gmail.com with ESMTPSA id a8sm70719207wma.31.2019.08.05.04.07.45
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 04:07:48 -0700 (PDT)
Subject: Re: [RFC PATCH v2 07/19] RISC-V: KVM: Implement
 KVM_GET_ONE_REG/KVM_SET_ONE_REG ioctls
To: Anup Patel <anup@brainfault.org>
References: <20190802074620.115029-1-anup.patel@wdc.com>
 <20190802074620.115029-8-anup.patel@wdc.com>
 <03f60f3a-bb50-9210-8352-da16cca322b9@redhat.com>
 <CAAhSdy3hdWfUCUEK-idoTzgB2hKeAd3FzsHEH1DK_BTC_KGdJw@mail.gmail.com>
 <eb964565-10e1-bd44-c37c-774bf2f58049@redhat.com>
 <CAAhSdy1Voxuq=70Qkf__57MwE+DWEVayxLwu09Evnko=2kcweQ@mail.gmail.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <faa951a8-249e-b751-02e0-9a71879dff9f@redhat.com>
Date: Mon, 5 Aug 2019 13:07:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAAhSdy1Voxuq=70Qkf__57MwE+DWEVayxLwu09Evnko=2kcweQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_040750_388150_EEC4DBEE 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
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
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 05/08/19 13:00, Anup Patel wrote:
>>> I think we can do this at start of kvm_riscv_vcpu_flush_interrupts() as well.
>> Did you mean at the end?  (That is, after modifying
>> vcpu->arch.guest_csr.vsip based on mask and val).  With the above switch
>> to percpu, the only write of CSR_VSIP and vsip_shadow should be in
>> kvm_riscv_vcpu_flush_interrupts, which in turn is only called from
>> kvm_vcpu_ioctl_run.
> Yes, I meant at the end of kvm_riscv_vcpu_flush_interrupts() but I am
> fine having separate kvm_riscv_update_vsip() function as well.

At end is certainly fine for me.

Paolo

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
