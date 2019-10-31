Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE44EEB7F6
	for <lists+linux-riscv@lfdr.de>; Thu, 31 Oct 2019 20:30:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kuGcDz6ycy6adpORYIaPPNwGyh2Un533IWk90PAumO8=; b=b3FQT8Bi4Bc8Mg
	syi9H13XCa7n4c4cxuPIeFa6ovKlhx4/GnFBO3XWxSIl6CSLxoYw0m2RjHwDwzw+u8PYjicbnMMHb
	GTvxNozCP96jGNOt/Raih1ic1N95uj9jfHeWT95lH8CebXPeZonthck+KvunSm9LJX/8Mtu5wT9dy
	GZB6qXpT7AkNzpPguSCVNS21EkyMHfzfCr/kj7Z0Iyf7/GujL/htNpSaUG/Manu0urBcRRaAL2v8k
	FamHlhxf74q+4HwGblAItmB9i2G5BXLWzRyag6AV9uu1Gj29n2vV9L+Jh1tmr4xiTg0DoFv4k0Swt
	0G8s5tiN7XRWkqt9NILw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQG8t-0000vv-Qk; Thu, 31 Oct 2019 19:29:59 +0000
Received: from mail-io1-xd32.google.com ([2607:f8b0:4864:20::d32])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQG8q-0000vW-AK
 for linux-riscv@lists.infradead.org; Thu, 31 Oct 2019 19:29:57 +0000
Received: by mail-io1-xd32.google.com with SMTP id p6so8070233iod.7
 for <linux-riscv@lists.infradead.org>; Thu, 31 Oct 2019 12:29:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=ps9mIWZL6I4lt3cKBlCNZFVxrfgS2HQqXQheS1VhANc=;
 b=XzWHPNa9zlkb/3BPgBxi8pnviBHJE8YC5j2rV4X3/iFDVc/vTJyS8zUGIi3MEUf14u
 BWRGXbNjc1dXRhDzIfNdPuC2L8EfTJfsB/idFuJBVzfRDdQ4bp+thdbbQM9rsgNoymKk
 OxzDrzhcHFAVu/EK027/3Y0ud/pMYD6x3CFPpsWOA95kh5FLxjSUyX6NDSjt/fhqyNZM
 a1ldEorqYXclz7PPLviY2YnF+7YZOPJtMlfGSyyjGT3nZoXCP/V90hxfTuaMnG6SYu/d
 nufF+cQRjKbMG9VqqJxVV89krnxzoELhpLDfaC63PNVj7IZvfnJLoUVsrn9zeRauA1Pw
 N/xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=ps9mIWZL6I4lt3cKBlCNZFVxrfgS2HQqXQheS1VhANc=;
 b=FD2E8WdBgTXiKhM5GNH0oP1yPV44pJ55egtD4dISdm34HNwkAHsH2jg3ySc0xpPIw+
 YdIoONXuDmUnL92y1CEGz+7/4R2wXTQ1pcb0PNHKu0xUE2SreOLKnh0VT30aJTo1rWNj
 0A2ieq3qYUqQ+Z3F9OVgmMtuK3s7qop9IuW0YsYtqMMerrqIJJpxvkrTGmE+lZZJ0LjW
 XLoQJ4t0X1KonSrUv8/E5SZ6mlzMRQhUWrofQ6YSJ0qSPKDQN9rTja7FxQFzRCIrVIHo
 scBvqr4lE+YTWZJ6tcFHHDk/wjVLkXpdEI0AOxet8jtQciXz7Vh9HVvvbvqBAsFFzfcE
 FRKQ==
X-Gm-Message-State: APjAAAUXkbSGtZXw6FePr3M+QSCzlm2kQPovw5rUkVpdSElM7crlng45
 O2wuYPaJIPrVB9+oXpissDl8XVboC4c=
X-Google-Smtp-Source: APXvYqwuUBD1GtseY327OIvcq+SpT+2E+Z53XNLIt4/i9Xs32ZGpLdq2+5z5898PYsIrf3ahdzC5QA==
X-Received: by 2002:a5d:9712:: with SMTP id h18mr5049544iol.256.1572550193215; 
 Thu, 31 Oct 2019 12:29:53 -0700 (PDT)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id y5sm350498ilk.83.2019.10.31.12.29.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 12:29:52 -0700 (PDT)
Date: Thu, 31 Oct 2019 12:29:49 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Anup Patel <anup@brainfault.org>
Subject: Re: Experimental branch
In-Reply-To: <CAAhSdy3Y1W_8Uu00F66jVM=ObFouxw1C_z4-MVkLh0+s5Wx3HQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.9999.1910311223050.16921@viisi.sifive.com>
References: <alpine.DEB.2.21.9999.1910311101480.23683@viisi.sifive.com>
 <CAAhSdy3Y1W_8Uu00F66jVM=ObFouxw1C_z4-MVkLh0+s5Wx3HQ@mail.gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_122956_362270_5AB88C9E 
X-CRM114-Status: UNSURE (   6.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d32 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, linux-kernel@vger.kernel.org,
 Atish Patra <atish.patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 Paolo Bonzini <pbonzini@redhat.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 1 Nov 2019, Anup Patel wrote:

> You can drop the KVM RISC-V patches from your experimental branch.

We're not only doing it for you ;-)

> We are already maintaining KVM RISC-V patches (and dependent patches)
> in the official KVM RISC-V gitrepo at: https://github.com/kvm-riscv/linux.git
> 
> All KVM RISC-V related work will go through above mentioned gitrepo
> in-future. This gitrepo is co-maintained by me and Atish.

It's great that you guys have your own git repository for KVM patch 
development!

For upstreaming, all of the RISC-V KVM changes under arch/riscv need to go 
up via the arch/riscv maintainers to ensure a coherent maintenance 
approach across arch/riscv.  We may work out something with Paolo in the 
future.


thanks,

- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
