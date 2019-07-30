Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6827A37C
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Jul 2019 10:59:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IvHMUCiUgKcU9E/J5Tptmx+4Y7hkDnOd6A/J3M4CVeo=; b=RZl03+zp7Z2pcR
	bXjWg7EQymms6kPeUvi127tDMyJk8H7xTvssyBja4LGDF9AUq/kNgZvGsvM1y1gHAs30V3L/SWxPC
	GeZ99PlmDXbdbJ6BiZ4l43v9H951BpanHYCTWlkZJgtOK3Pu2R3tbTukPKI5XPLXIkcfYD715rafJ
	c8BG4bVvxFK0lrOj1GaEsx/Gkq6le/IJGBIENNWoMJrmDpdII9p4/kdjm9ve7FcG+Omfm+fGG3r/8
	A1euNf+K9/bQqAfJVNv8bXIqzHoV5NLwdUt2A4uw8c9WZACuG9b2rwGPOF55XK+hKzOd5v9dBECxe
	7VFT1PctE6fm/98rG9jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsNyV-0006G4-Q8; Tue, 30 Jul 2019 08:59:15 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsNyR-0006E2-6t
 for linux-riscv@lists.infradead.org; Tue, 30 Jul 2019 08:59:12 +0000
Received: by mail-wr1-f68.google.com with SMTP id 31so64879369wrm.1
 for <linux-riscv@lists.infradead.org>; Tue, 30 Jul 2019 01:59:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=gAOqp4tzpeM+kc2yKMu7T8t6rZFmcQeUo4HHT+xzYZI=;
 b=BlwxvmU9s5Rch8E6yvRsGZx4xLDkhlipMnHhZSfoLCZtKhgaMKVzy2K4i0LayzC412
 I+i5EjqyImB7JWyFGQjInq3x75jCq9PnCC9j0eLvrdToi33poVS7PV+GVaQRGbDZWSPU
 gc5Fe24+Zh6Dnotk3DuJmDgPb0ksqXQ49L7G4jaR6D0ejJoPFjk2XBvOcJ2mEjhGaf6W
 AwcnB66QS6ICgtLHvRDza1xNP445O8qC0MnNsiapoBthD0Xhsb7i2aeYq9nRoy/hmsLX
 NFBAYO3n1wPPQpsGwIpkgGJ71wiPs4kviuNsJGvfMvmIC/vUZN0LslC8yhjYAqrcT2+/
 yEpw==
X-Gm-Message-State: APjAAAUWjTnfFWQ5xDlBtobrNm2uegsWWPcmIwzah7k5KqKuoBo0tXwr
 44ktm80Y5XmtTpJGqtonPDpW7w==
X-Google-Smtp-Source: APXvYqzhAPFkeeQBIg3SYU7j4ftAIiAkZA1CoW1Nhux1UtFgjCYh15jhOXBY/HRWgOoVtocpRAQlHA==
X-Received: by 2002:a5d:6182:: with SMTP id j2mr78631874wru.275.1564477149972; 
 Tue, 30 Jul 2019 01:59:09 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:29d3:6123:6d5f:2c04?
 ([2001:b07:6468:f312:29d3:6123:6d5f:2c04])
 by smtp.gmail.com with ESMTPSA id f10sm51137371wrs.22.2019.07.30.01.59.08
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jul 2019 01:59:09 -0700 (PDT)
Subject: Re: [RFC PATCH 10/16] RISC-V: KVM: Implement VMID allocator
To: Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Radim K <rkrcmar@redhat.com>
References: <20190729115544.17895-1-anup.patel@wdc.com>
 <20190729115544.17895-11-anup.patel@wdc.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <4a99b586-a7bb-be3e-c47b-7809e6be610b@redhat.com>
Date: Tue, 30 Jul 2019 10:59:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190729115544.17895-11-anup.patel@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_015911_609160_DA72F9C3 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
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
> +	/* First user of a new VMID version? */
> +	if (unlikely(vmid_next == 0)) {
> +		atomic_long_inc(&vmid_version);
> +		vmid_next = 1;
> +

vmid_version is only written under vmid_lock, so it doesn't need to be
atomic.  You only need WRITE_ONCE/READ_ONCE.

> +
> +	/* Request stage2 page table update for all VCPUs */
> +	kvm_for_each_vcpu(i, v, vcpu->kvm)
> +		kvm_make_request(KVM_REQ_UPDATE_PGTBL, v);

Perhaps rename kvm_riscv_stage2_update_pgtbl and KVM_REQ_UPDATE_PGTBL to
kvm_riscv_update_hgatp and KVM_REQ_UPDATE_HGATP?

Paolo

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
