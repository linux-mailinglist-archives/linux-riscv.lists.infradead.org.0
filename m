Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F7F75977
	for <lists+linux-riscv@lfdr.de>; Thu, 25 Jul 2019 23:26:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ry5NuoITxG+5OIFlo7ikV9+NaKHqWiRCYIH/g2fEMYk=; b=c5bqs91U2CHUSw
	iQi2i6wP+AYG0uyr5JtTWQOMpshJ0L5lzADi7q8gLTMspi5mRIc+3v1foZo7/PMQtxVj7rdW8UN7w
	kJ+CqE84n1cAQ4Yp2yBWU4WMq7hbwBSv4RbLvzdkA88ZYoinnvAu0Z07t7i0fvsPIxN+i4kxBnATE
	U3U8MKTkV32OITEOqzL3UcUJRHjPRa2jJLLPqLHC26MtGJpGkAoyioorsQ+0A+1IZ0fc6gFOKW3TL
	o62D21htvjjzE0sPSQLUC4JDLy18jy2flINkXRx4iCsLovB7ksgBfwtpDdEOneFzBeKIJ047PkHKY
	xabX4ck4uiTCckSalS2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqlFz-0000KR-7P; Thu, 25 Jul 2019 21:26:35 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqlFw-0000Eq-Aj
 for linux-riscv@lists.infradead.org; Thu, 25 Jul 2019 21:26:33 +0000
Received: by mail-io1-xd42.google.com with SMTP id i10so100300296iol.13
 for <linux-riscv@lists.infradead.org>; Thu, 25 Jul 2019 14:26:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=76/gf9wFjHpTUDE6FbprmTNUjZsTgezSyFFVzVXR7sk=;
 b=LvIZiJGza3pKmSCbWyc7TTTl2OoTMKpU2DU+CJ88atN9zvt70BjGxMhE8khQszS08R
 B+BkmOtok5QjBd0CNmzQovLkSqNeWy1nkAL78WV/5VjMe2EOJK4KrRcSZIyv+ft2yG36
 rGUchtH3UsuNM09rqm7G7TPk2NVZQbNkdWHOBTFgOjF8jtKYD8v6hbPDckPXiiEsK6Hy
 6UBP1VETBolc/9LXsDFQQxf9vf/AzCxn+dDyhrhXKbFl3RXq33BTBqLh4TfEBljdtB/h
 uL3TxzqhMjDhvk8EGTxoJk72XZRsFuUVEIE0yqs4HLmeDcBeOxrHg0OoI0taTq9UKfy5
 St1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=76/gf9wFjHpTUDE6FbprmTNUjZsTgezSyFFVzVXR7sk=;
 b=ZPlnYsfLqYHFtNg5VNGi7PJj3Ot4wDyXgmsMc4oiC6R9ELop4bZ7wkJjZ+TzXZqdmN
 mGPX/CNz3/z4eY8Qw2CJKPWkMA3xef+v1FEXXY8rIOL8XX+fTrN4mMX0NUtqxtRUTRXt
 cT74eLaVwSlHecfycDKzB/+2XUHsbFSSc6OCwcqKAr+MXrMoFQviTVR61jgcLcNy8MIb
 sIzVexXw5LrdJOB/DfDa6FRE1vFLiuCUFtCC/PgMhImkXvl+rS2xb8/wtQK6UAuwkuWg
 VYmvfIYw7dNnkoeUgb1vKGomXMA9RuLFzJ7RuSjiLxLjsPuieUAxL4NJ5MZ7mYtjLMwZ
 Zx8A==
X-Gm-Message-State: APjAAAVts4yIkY6Z6GyETvXHdEWaoux43qn3wbqs3LbIaW3prerFL2xx
 Xp0IHagaVa6O5w/TiLhZNNM4Ow==
X-Google-Smtp-Source: APXvYqyhHmO1gUw1vzdQhPJd+YQtrM3wJpJ62sVmiyXexiirus39t9vFwVY26bMD21fVqSBlVx9y/Q==
X-Received: by 2002:a5d:83cd:: with SMTP id u13mr80672996ior.297.1564089991129; 
 Thu, 25 Jul 2019 14:26:31 -0700 (PDT)
Received: from localhost (67-0-24-96.albq.qwest.net. [67.0.24.96])
 by smtp.gmail.com with ESMTPSA id s10sm118939163iod.46.2019.07.25.14.26.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 25 Jul 2019 14:26:30 -0700 (PDT)
Date: Thu, 25 Jul 2019 14:26:30 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: bhelgaas@google.com
Subject: Re: [PATCH] pci: Kconfig: select PCI_MSI_IRQ_DOMAIN by default on
 RISC-V
In-Reply-To: <alpine.DEB.2.21.9999.1907251422040.32766@viisi.sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1907251426010.32766@viisi.sifive.com>
References: <alpine.DEB.2.21.9999.1907251422040.32766@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_142632_372978_FEE1B336 
X-CRM114-Status: UNSURE (   7.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-pci@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 25 Jul 2019, Paul Walmsley wrote:

> This is part of adding support for RISC-V systems with PCIe host 
> controllers that support message-signaled interrupts.
> 
> Signed-off-by: Wesley Terpstra <wesley@sifive.com>
> [paul.walmsley@sifive.com: wrote patch description; split this
>  patch from the arch/riscv patch]
> Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>

This is missing Wes' From: line.  Will resend a fixed patch

- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
