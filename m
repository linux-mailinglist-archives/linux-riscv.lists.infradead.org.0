Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE2212FF6C
	for <lists+linux-riscv@lfdr.de>; Sat,  4 Jan 2020 01:11:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WiEa+o5Q5CybKGQcapfVdUUfq/OQ4KhWfLGnp+c9m/M=; b=BuA72BpaYU8q2/mbr3EFDGiUT
	oJAdQfMztLmmwDM8hIBki5hxS96LcJrVUloxIQe0sgG/AggfEpei5yB54g/NG2qwESq5M4B2JErLk
	E9QL12CC9ikCa2ApvcfgkDYPvdLLDiiYGqGghR9CZ1Cj/QzNmroB5JgKvfUxiJ2FGt+fN6RvYtv0p
	c+Blp4xxRk34OKyQOfrwfmg7JiekmSnqSNIGQ5dLl/2lFOwMZlR/3xSPY+PrcikxWzqgwQWWyy1XC
	qKqtSe102JMDNXSZmQJlE/XLppNWdhwbsB6Qrt11fQu/CrBD9uyNmpfwaDpRIPVruvjH7lImIV9JS
	c00CWHaiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inX26-0004dC-T3; Sat, 04 Jan 2020 00:11:10 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inX22-0004cf-C2
 for linux-riscv@lists.infradead.org; Sat, 04 Jan 2020 00:11:09 +0000
Received: by mail-il1-x144.google.com with SMTP id f10so37971364ils.8
 for <linux-riscv@lists.infradead.org>; Fri, 03 Jan 2020 16:11:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=WiEa+o5Q5CybKGQcapfVdUUfq/OQ4KhWfLGnp+c9m/M=;
 b=NYQdIoD3So2vtdo/HpEDg5r/5v7qJvQ2o+0tZ8R6KXN9CkQqgQwbrb5S+Qx8pUSVDu
 VhieqxPsHSMQ9wqLQ7ZxkmbZ/MUqFt+Zka2kpF0mqHiK2PUHJGnLFtVE9yLKyJRRZmZy
 e98QwCZ6YrDmhDifh++T4wt7J7IY1BChfOsmI1p3Ws+7g9NrPcjmjGAADmuyEezAID+9
 UsFZjCNXekajuOskc5PBmVjImJOLKZhqxfnQGuzxFr8mu3wyVyo4s7Vj54qTDiiEm6ZO
 aB/INtigKBdCSZ8LXIbZ7vIEUu9bjxQx1n47JeDIUn6rRQLKujMy8ajc5Ak/sWLoEakr
 Pzug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=WiEa+o5Q5CybKGQcapfVdUUfq/OQ4KhWfLGnp+c9m/M=;
 b=DcLL9KbsCteIBRfZYGwSQUu7J7+bPCDuGs0mcITkwguqO4ii6zEMXFcW14+vdCj15Y
 PMjnWSMb9lF1X4eqVxqhEP/fDj532mmSw8gXSywICTVhPbDRYGSLB6PHKKb3pT7nSa/c
 W8IBuRc54y6jfUnWJ6lEWJR0pBLecfQck54i8LnLSTjQpYwu0Gq6Z+TDDjYMsxxJ1ZuM
 EOukaVQpdEWcyL20W/217jDBhkFQuT085MUkJDMGePUXBgWIntyjkXFKRIV3pTGavbI2
 IglB27tIoLHnA6uf63kgMfDWxF11LlLIWsL92Fv1m7xrrsnQZDgT9prUJeLC0WFroQLP
 NTIw==
X-Gm-Message-State: APjAAAUBi9ugODUNIl+JGTxXNSJRQ66gYXeC0TTs5tdvmBjJR8ikMmsp
 GkdKd8v3ascLdgjTXlALyrk49A==
X-Google-Smtp-Source: APXvYqztMA0ImuOwI4vnJlP3KqgCNhVBA+tcEjzNHZNfEO+6ejnXkFxewXTPNXnddnnAha0yRPvIdw==
X-Received: by 2002:a92:160a:: with SMTP id r10mr73359367ill.14.1578096663169; 
 Fri, 03 Jan 2020 16:11:03 -0800 (PST)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id f7sm15152328ioo.27.2020.01.03.16.11.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2020 16:11:02 -0800 (PST)
Date: Fri, 3 Jan 2020 16:11:00 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Zong Li <zong.li@sifive.com>
Subject: Re: [PATCH 2/2] riscv: mm: use __pa_symbol for kernel symbols
In-Reply-To: <20200102031240.44484-3-zong.li@sifive.com>
Message-ID: <alpine.DEB.2.21.9999.2001031610470.283180@viisi.sifive.com>
References: <20200102031240.44484-1-zong.li@sifive.com>
 <20200102031240.44484-3-zong.li@sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_161106_542106_2BFD02D1 
X-CRM114-Status: UNSURE (   6.88  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-riscv@lists.infradead.org, aou@eecs.berkeley.edu, palmer@dabbelt.com,
 linux-kernel@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 2 Jan 2020, Zong Li wrote:

> __pa_symbol is the marcro that should be used for kernel symbols. It is
> also a pre-requisite for DEBUG_VIRTUAL which will do bounds checking.
> 
> Signed-off-by: Zong Li <zong.li@sifive.com>

Thanks, queued for v5.5-rc.


- Paul

