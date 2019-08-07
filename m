Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 887008513E
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 18:42:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LVcoqW8+pc6YPEW/PsWnJNP+KOjk+xg8CuSrecvELRw=; b=iTAjAbq8ymaVWE
	y1q3lD5rq0zZ0e/iR7M/bDjx0E0R3+CdAlE09XZNn9FbaafZdDrcVw0w8DHTPVuOFDEnCIAaZ/7MN
	TwfEf3sQ0MOPfbZme21DwwO0Xd24rsX5XadWHr1qIDMBPbrsCzwCY7TLU52Mgo73RsuH/+QM5nb5a
	VzRDfZrRwGOh/mcNhD0wQ6Kkw04OfmxjGoDj5SjeoqeaYTI4fSjgEEMF957GAImaWWzamIgmPDeDk
	qWjfOkSUTOYbkRUNhLhNueClSU1+1KnNLqDK6xM60esDi7LwEdyD0gouAqLozx+Xw2NhYBGRuHeN1
	iMKWLqfevktbTOH+xBbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvP1N-0005ez-9R; Wed, 07 Aug 2019 16:42:41 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvP1B-0005Tm-6P
 for linux-riscv@lists.infradead.org; Wed, 07 Aug 2019 16:42:30 +0000
Received: by mail-ot1-x343.google.com with SMTP id l15so49626021oth.7
 for <linux-riscv@lists.infradead.org>; Wed, 07 Aug 2019 09:42:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=OgPFf4sieXg6FSqMl/7z/egdCX4CBj1LSh4wy9vZMd0=;
 b=JmLeqOSpk6X4jyeXqVA19M/C3q/EQo3ixua/k4pXgGjJwizYMK6DOHHGeTu2QRx/pi
 Ro6gORNTivgGAzBqKHMOi6pxTU6w9aBJvqX9Fb5Gld/zqQwBjnBNtdJLJLnJ52YmH3h7
 3iMK1Jc5RYXTOjx4i6Sio2583eBQKPfXxxjPxdrEvbSa/sHg4qqiDQOHPqcz1oP0BYmg
 FE3H1oEzL/VB6Aw0e6BRldwbFwDDMlhOYKZfdZhp3xQkRsxDQesVNcoAM4MsHJo6QJvo
 CCQOw2mSAvxoEsAG0/vXJqzqrT6cEzp/+RPkNaviB0duB+yaeTDzaoLHoInsr3WUDZnR
 dmyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=OgPFf4sieXg6FSqMl/7z/egdCX4CBj1LSh4wy9vZMd0=;
 b=DKzOJ8W51gASVuYWlByaOivjR+IADVa7dE3T2XYD1biXdwMFCJYnUAJG13Vu/66ggg
 KIbf5T5fcjiW66WnJGsEeFGvjH6nE2k486HYGvsyJWW92QDKs4zT/wFf0dc8G5ft8gFf
 jvjZDqAMhLZV1nE7yV/XP4oYbo5UBJVjTnlTBsx1hxkFn9Yn0KdfWDdCNTnJSCx7ResO
 +RcRsiocowet7raz4dKSnpST95RvqPyn6BQG1v3Oj0FDMIElHpn3fuYR583rSFt115KV
 Wr0eHuqNbs1tR9nljf5vusI6rEUceu/qErgkt4laXlcm09975ubpgKiAgmCJkFMr+WZj
 tAOw==
X-Gm-Message-State: APjAAAUq7fDmXAvz1MpN3Te9cjij9rgW/vyLCgz2rflr6l/DawJS0jn3
 14xplGzzI+9yjcO/hPFHUH1WKg==
X-Google-Smtp-Source: APXvYqwm/dtouaS2YDkg4nuZf7fonnO8dwiBe2IToY4UY/xI3nlngfUW1dUQIVzDV+FS9qhrZgGcjA==
X-Received: by 2002:a5e:9314:: with SMTP id k20mr10575140iom.235.1565196148444; 
 Wed, 07 Aug 2019 09:42:28 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 n26sm66735984ioc.74.2019.08.07.09.42.27
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 07 Aug 2019 09:42:28 -0700 (PDT)
Date: Wed, 7 Aug 2019 09:42:27 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Alexandre Ghiti <alex@ghiti.fr>
Subject: Re: [PATCH] riscv: kbuild: add virtual memory system selection
In-Reply-To: <c331e389-5f33-634a-f62f-e48251ca4cfe@ghiti.fr>
Message-ID: <alpine.DEB.2.21.9999.1908070940110.13971@viisi.sifive.com>
References: <alpine.DEB.2.21.9999.1907261259420.26670@viisi.sifive.com>
 <20190802084453.GA1410@infradead.org>
 <alpine.DEB.2.21.9999.1908061648220.13971@viisi.sifive.com>
 <20190807054246.GB1398@infradead.org>
 <c331e389-5f33-634a-f62f-e48251ca4cfe@ghiti.fr>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_094229_420207_CCE7F03C 
X-CRM114-Status: UNSURE (   7.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Christoph Hellwig <hch@infradead.org>, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 7 Aug 2019, Alexandre Ghiti wrote:

> And FYI my series and your patch are already in linux-next.

Yes, I agree with Christoph that it would be preferable not to break 
randconfig/allyesconfig.  So if you don't mind, could you respin the 
RISC-V patch to drop the Sv48 portion, and simply assume Sv39 for RV64 as 
we do for the rest of the RISC-V kernel code?  We can always add Sv48 
back in later.

If you agree, then once you do that, I'll ask Andrew to drop the RISC-V 
Kbuild patch that he's carrying.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
