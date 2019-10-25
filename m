Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D25E570F
	for <lists+linux-riscv@lfdr.de>; Sat, 26 Oct 2019 01:31:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=maBS+4p0+p2iNR1m1ou3P4zkIo65YTG1NFgD+BTfMtg=; b=UVJwfMz2I2eu9l
	JgkGSBrsPD2KAUX93Y2HFHUdrUQr2Qqbk8K1TQn8SnOoRJWEqYV1gdwFkW/rlhiWbaYbLl9Cth9tT
	ND77IuI0r5C9hPkWl6Uk+DAx5LYZS+zmuCsYm3RBVds1qfyf9CTFTxNKFrefSjzbN7iT7VOYMfy/u
	XKASmlcOwjK4x6r7p34aNbmib1gVMiVo9X4201O1+ZuX0Ji0vEsQ4vzcHVRwfErOOGwEIxRYB+kct
	+BtM0M4vSmJttyH1cvR3jq/pzR8POWq/gQpok/Im3nwJWyZVhkKoHjTB0jp+P31FXvghUCbqq+/lx
	23oMU3EdAuA4WGWNnfJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO92z-00035Z-V5; Fri, 25 Oct 2019 23:31:09 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO92w-00034B-NN
 for linux-riscv@lists.infradead.org; Fri, 25 Oct 2019 23:31:07 +0000
Received: by mail-il1-x144.google.com with SMTP id v2so3252954ilq.4
 for <linux-riscv@lists.infradead.org>; Fri, 25 Oct 2019 16:31:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=lR5/5+r8bCmhCIY6LJthT487CIpdBcb0dtxi4yHzNfo=;
 b=U/8ANm9ZjTcvnGCy0ASTe45RLMWWXvVGkN/QrSOs+PzJIGkftolprsdRaRykpvpKFC
 5cfDoSA2aGycaGrQ5gyL/wmmkY41E0CLqZ/kN3aHzFGjv+/+pGuwkMcuPFyuQhHelbmt
 GvcjTVl0h3fSMQW57MfYY9SyrBWSz39avXHo4AYqVwcNPPcbkW4KgwyP8Qdws5HlIVNq
 cvZRcarlZOdTTH2YVIWluME8foAufixQH9SSG3WYEX/QD9pLjoO3ttCOY9pNcj1WbXZ5
 DFXRCbZFd0kqTDJsvNlurcq4uSy8Ui0T00ooqnrVxkTMN9sr3B5LilYfEu2cR13WZmog
 hxfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=lR5/5+r8bCmhCIY6LJthT487CIpdBcb0dtxi4yHzNfo=;
 b=AjKxqV3NOCGx5NDJCCO/7+6OcPzil5BxuRvShyQZyK0uLVOa4D8KXZTHP2MbGGEeZu
 Iui9W4SyZGvSayi+6/3NPytflvcQR43pp/N21VQZmGKyr/pK858dviQHpPy1i/GH/3O1
 AXEp/a9VsX8ammtYOqfaZGdRa0DUW55wSyAdIzJA9cS+5oZJn2508ACVw69yWY1o2ijt
 8oJlJImrJWzbAg2BJMsmepAtScFX/cJ7rrnkomy960TUrlgdrnPPKqFMQtMXDvIy/SQI
 5B05CkvVq8XsTNWLWNhAqbxoe2GzeeqZwCyct/qxmMKcacXx7QQvyxhnIus3S09gh7X+
 a19Q==
X-Gm-Message-State: APjAAAUKwkq0I4EjVixfZu2fxqivsum9dEWUQw0G2g4WxgRH/5fx7BEx
 6/2sGU4ZuBRueTOSejFLvhORd2Stgzo=
X-Google-Smtp-Source: APXvYqxCRkC7bsr4R1MRLbbtPijuvmtcRENpyOsfBauaT1t9TfBCyyNa3dtelKHzUngB/GzRY3j/mA==
X-Received: by 2002:a92:c80b:: with SMTP id v11mr6695297iln.62.1572046262026; 
 Fri, 25 Oct 2019 16:31:02 -0700 (PDT)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id n3sm557223ilm.8.2019.10.25.16.31.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 16:31:01 -0700 (PDT)
Date: Fri, 25 Oct 2019 16:30:59 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Anup Patel <anup@brainfault.org>
Subject: Re: [PATCH v9 01/22] RISC-V: Add bitmap reprensenting ISA features
 common across CPUs
In-Reply-To: <CAAhSdy3xV0UjDKUgHoKbyoeV5kaC9rVSy=qoBpF=XrrbT=W=-Q@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.9999.1910251629540.12828@viisi.sifive.com>
References: <20191016160649.24622-1-anup.patel@wdc.com>
 <20191016160649.24622-2-anup.patel@wdc.com>
 <CAAhSdy3xV0UjDKUgHoKbyoeV5kaC9rVSy=qoBpF=XrrbT=W=-Q@mail.gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_163106_768722_58A22690 
X-CRM114-Status: UNSURE (   6.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
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
 Palmer Dabbelt <palmer@sifive.com>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Radim K <rkrcmar@redhat.com>,
 Anup Patel <Anup.Patel@wdc.com>, Damien Le Moal <Damien.LeMoal@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alexander Graf <graf@amazon.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 17 Oct 2019, Anup Patel wrote:

> Can you consider this patch for Linux-5.4-rcX ??

Unless another user of the riscv_isa bitmap comes along, it seems best 
merged along with its user: the RISC-V KVM patches.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
