Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E8BBA41CA
	for <lists+linux-riscv@lfdr.de>; Sat, 31 Aug 2019 04:50:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BATF9tmm1ZO89xqZ16/WYB+WYfcYmgZH5P+aLzDCN0M=; b=oi/OlY8XsNI4HH
	L3M3Zo4TsmfAb7+vw2I0X1dm+iTjo9pm1YjZ1C3zRLGKYJs7DigFU8m3qcZPlvxKjShAmKwAkpIRt
	YFG7rr2o3dY5jTLNblzZ50RG3ypofmqzPoSkmktl9Eeg1W0SzJ9ydfNs6Vr25z5+qNcWDqPxbNi0N
	ECr0lnYhVAilG5VVf2GH59jZOhrli4ZoZeIgql4melqNSpilFpYmnd7a5YnGPv9gzkqCf69FPplmG
	wGExMaT26owmLj+k6yxfHnjToA0Ku6tsxTXMdd7w/nWI41Pk4sHx1yL9zLL3K//+kU/WS1bCE4YMg
	ZUGFiLynAZMSoje1ADpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3tTL-0001C8-Br; Sat, 31 Aug 2019 02:50:39 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3tTI-0001Bo-8T
 for linux-riscv@lists.infradead.org; Sat, 31 Aug 2019 02:50:37 +0000
Received: by mail-pg1-x543.google.com with SMTP id p3so4416815pgb.9
 for <linux-riscv@lists.infradead.org>; Fri, 30 Aug 2019 19:50:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=pRGk1s9ftRrOgrFlJyIOUPDg0XINxHbTOG06p4KdZFQ=;
 b=j28iqp/6JSYiDZNbRISiYHb21g4mVidI5hA2fpwhhod9ip0yIepebDaVqaNC4NSZ6t
 F4sqJtg0aNnUBAJ4xvigwSkyU3d3BhU4fKyqFQwEEecpZb6omCOOgzbVZVdAwVudh8YS
 6sAdCx1o8qqmfBIKwSjsLucJEbNfA+AnN8WTl8dWCKLDsa5HJRooFNeT9lMV7R87U2u9
 KXmlf47JGDrH7ILcbodi08i+6ehVBoujXc6/cUx4HyJ5u93ZM3FF54VbS+qgGeIEXSfV
 n5I3UI6QXxv203AO8+D/lzpzXof1tsEkr9j37CEL5qafNFHR6QEo9dMi6UqQFn1zoh8l
 UWDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=pRGk1s9ftRrOgrFlJyIOUPDg0XINxHbTOG06p4KdZFQ=;
 b=dlpOsuz+Tq6u3TnaJow2OQlEJ+11ZCdkEkG+qCMGhidciiMq2EhsOgyu21+wfd+1DD
 qk+Sds0dS5vMVRxzP5axFwpPOEsfGDXsx2u4LRPcyFpZiR5A5c3oNR0+3iIEbyyOV1kr
 XAaPdpTP14sgra4NjcL34sMNlfQ08niKfWX1sqBu9skG7he17rkm8vjPs6XYP1M5lbTw
 sgVRIz8n/cTG0nqxq4wVC4REw9Dn4JG8ytsLSZtFCtW4g7Ik1wm73sRZ3d0Eq1fiaz1H
 tWM3Kgy+8OWhtIDX28TWVQjzX7UqlMSSIh2xa3E8XfnlvFuFmpCDccWOt19bmaanrBbM
 jrZQ==
X-Gm-Message-State: APjAAAUMvfRvbfSXPea/ru6nVIS3pekb7UntgVf/LP3ubepc2RTVUt0M
 1e3guP7jg2M8nednHehLufR2Ew==
X-Google-Smtp-Source: APXvYqyyIZTS2at8UaC2GBzO1HAEDcqCzwTOJ2eIeXn1Qqrvu+CLxM4PQ8fncDRODM0mD17f4WmUzQ==
X-Received: by 2002:a63:f07:: with SMTP id e7mr16271558pgl.238.1567219835444; 
 Fri, 30 Aug 2019 19:50:35 -0700 (PDT)
Received: from localhost ([216.9.110.5])
 by smtp.gmail.com with ESMTPSA id 195sm8287179pfu.75.2019.08.30.19.50.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Aug 2019 19:50:34 -0700 (PDT)
Date: Fri, 30 Aug 2019 19:50:33 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [PATCH v4 0/3] Optimize tlbflush path
In-Reply-To: <20190822075151.24838-1-atish.patra@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1908301939300.16731@viisi.sifive.com>
References: <20190822075151.24838-1-atish.patra@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_195036_366935_822083AF 
X-CRM114-Status: UNSURE (   6.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <Anup.Patel@wdc.com>,
 linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@sifive.com>,
 linux-riscv@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Atish,

On Thu, 22 Aug 2019, Atish Patra wrote:

> This series adds few optimizations to reduce the trap cost in the tlb
> flush path. We should only make SBI calls to remote tlb flush only if
> absolutely required. 

The patches look great.  My understanding is that these optimization 
patches may actually be a partial workaround for the TLB flushing bug that 
we've been looking at for the last month or so, which can corrupt memory 
or crash the system.

If that's the case, let's first root-cause the underlying bug.  Otherwise 
we'll just be papering over the actual issue, which probably could still 
occur even with this series, correct?  Since it contains no explicit 
fixes?


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
