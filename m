Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB6AE56F4
	for <lists+linux-riscv@lfdr.de>; Sat, 26 Oct 2019 01:11:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=80zrLwYyqCnQoErnjMlfGBP28l7XR2KtAjo5v5MXrTg=; b=juVTaUDmWTXclt
	zpiNz9RO+PEyaF/8rbGgcKpInL4o+HsTSwESyyu5yV9i24TceKSs7Sot5UJsEfwJ3Waouda4SrRT/
	+30TEpgTMwSCSw9wgf8tN08a+Bh72vaEJOcMAfA+1/+DfXBoVYUUHrjilssw8DDtOUDxYVNO/BkrV
	ubLmTGP6JDQdTX0XlGmyb/sbT2WXfTycmvTqAVKlpPMVC84p1h+r6OBB5Jam24wFi2+cCn98gUZKH
	5r2MDK1S21m9Jig95TxrHbAP0PQZFYKmGkQtlaQr2hpyUvVwXYpa4Kkv5pF9zeutgJxdHQGMjSvRo
	ibzK2UMbF6ARd3HyNYdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO8jK-0004Zw-4q; Fri, 25 Oct 2019 23:10:50 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO8jG-0004ZO-Ht
 for linux-riscv@lists.infradead.org; Fri, 25 Oct 2019 23:10:47 +0000
Received: by mail-io1-xd43.google.com with SMTP id c25so4203222iot.12
 for <linux-riscv@lists.infradead.org>; Fri, 25 Oct 2019 16:10:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=Nw2n9QTFh5kHjw8cqYYhuXZ+PymsFnyOpi7WiO2JCuo=;
 b=C5PVodu/0MW6W82UHHNT1HEG10+OYbI9GS0eNEymZeA/7BqJWFvlAA+UABDMo1KlR7
 KhrSi65xovCBcBeJjja/4QdhiHUONlY1lP5QkiN5o2J5GQJLPXD1Oj8JVraZcMrbAQLv
 wu4tYpl70lY6bVa7lvDZWBovLJFZXAWMu+lz218bMd5r2muD8k7oU6RF4Ygne7oUa/hE
 /OTFHWPbXIDiGNKGAfEGzW/G6C/rLKsx5BqsoUAUA4yCcwN6oB4M6Brf8BPXkuzPaMa8
 wgjcMQIqLnZEygzWAlhI/9oc3jcADO8k2c3cJHeawEqzK+d58qwFyAGx4sN/tXklxQ+1
 qlQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=Nw2n9QTFh5kHjw8cqYYhuXZ+PymsFnyOpi7WiO2JCuo=;
 b=qIy/vlfv5g+K326kxAgl3Ie3fOte5xhmh9/SA1zBLjRUBqtR22+zTo6PHPOVmUcVw1
 fcESK0cdkB+J87aDtiStPo+6JwVoxc1LgCiz2+790S9zfZ/3QY8Hn4JeXFQa1yxmQMJw
 XSMe/htXFD0LhZTw6+VthdLtTiWb0XfciGapcfveIGS5dlfbTyHKdiUq2uu8DeDpGPy7
 bXUblqlpSb07s+C2XeGyr5lZX667C52aaeyyG/tUVTU0L31+SlGKAcOwUkslA92bp4Ka
 oosPsJItNO38rjRkGehSxxCIx/zSyDKY1sZDj7Iehr5Ds11Uuev7xQqL3UgZ/4473cIg
 Om/A==
X-Gm-Message-State: APjAAAUYQybzbjyBB7wLMQViaALOCyeNdYaHipzGbJ+LhA1so0S8wqgq
 yLncwLxgUan8TV75ygdjjuHAmg==
X-Google-Smtp-Source: APXvYqz9QtjxasedL+eeZEZOfOFKJkfn7+/rp0EGhSA9G0+osf8i+y4YZrwICvDdaAfSp7dhwzACWA==
X-Received: by 2002:a5d:9dce:: with SMTP id 14mr2147247ioo.166.1572045045576; 
 Fri, 25 Oct 2019 16:10:45 -0700 (PDT)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id j22sm375958iok.42.2019.10.25.16.10.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 16:10:44 -0700 (PDT)
Date: Fri, 25 Oct 2019 16:10:42 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Anup Patel <Anup.Patel@wdc.com>
Subject: Re: [PATCH v9 00/22] KVM RISC-V Support
In-Reply-To: <20191016160649.24622-1-anup.patel@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1910251609500.12828@viisi.sifive.com>
References: <20191016160649.24622-1-anup.patel@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_161046_623981_771480E8 
X-CRM114-Status: UNSURE (   8.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Hi Anup,

On Wed, 16 Oct 2019, Anup Patel wrote:

> This series adds initial KVM RISC-V support. Currently, we are able to boot
> RISC-V 64bit Linux Guests with multiple VCPUs.
> 
> Few key aspects of KVM RISC-V added by this series are:
> 1. Minimal possible KVM world-switch which touches only GPRs and few CSRs.
> 2. Full Guest/VM switch is done via vcpu_get/vcpu_put infrastructure.
> 3. KVM ONE_REG interface for VCPU register access from user-space.
> 4. PLIC emulation is done in user-space.
> 5. Timer and IPI emuation is done in-kernel.
> 6. MMU notifiers supported.
> 7. FP lazy save/restore supported.
> 8. SBI v0.1 emulation for KVM Guest available.
> 9. Forward unhandled SBI calls to KVM userspace.
> 10. Hugepage support for Guest/VM

Several patches in this series cause 'checkpatch.pl --strict' to flag 
issues.  When you respin this series, could you fix those, please?


thanks,

- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
