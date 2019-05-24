Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDD3629EC3
	for <lists+linux-riscv@lfdr.de>; Fri, 24 May 2019 21:04:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SaFo+JOfW09Enc3IDLFZhTvT77Qp40E0iYgDxG5jDBU=; b=XbgodQyDuHv0pQ
	MHaeYRD6yzcuohKz5pAVHOSk0lAKP/0c9FOhI2d3Xztg4OFjgR3H7WZDdAUDVXDL5iAsngxwNLRpK
	xTbORlN4+UFpqiF5q2QKEEztO8U7WZ1NW+mOj9WTc8BhcljjIozhN0cmprZvsQRkeC6d2CwiWD8/X
	obxwGf77N0KT0q+SaMphWT0BptvU+up8n2gi1Kmce+u/EKfbPAgkMIPUv5zVKYQO0zFDIxnrOwx0U
	dAAGotZhMLOPBApvInsPYyv0asfI8DVPiU+CHDjm5rySZ7Ur/CiFmuZdKCYzWcZiXFNazUIFjGIg+
	fkEaH366mwvP4wdHYKIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUFU7-0004BM-8v; Fri, 24 May 2019 19:04:07 +0000
Received: from mail-it1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUFU4-0004B0-J8
 for linux-riscv@lists.infradead.org; Fri, 24 May 2019 19:04:06 +0000
Received: by mail-it1-x141.google.com with SMTP id m141so17514039ita.3
 for <linux-riscv@lists.infradead.org>; Fri, 24 May 2019 12:04:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=y7FSlCxqTiV+aLCWbjQJU9D9WKVJd8Msu18nAcu9DFc=;
 b=jzqotPlIAoWjYw9nwGN5Eb/pre+KCTIlEV1TSTZ/yukCjmfBAhLUCEURGP4o1zh8kO
 4qnYmteqICiT/lnax3iYhGGiyvQrAtp9H0LILlgSUVUF86zObhje26I5Csr1CUlRCpUs
 WszM2X2rmJcniiR+IzzbcnGRc9cGm0MBynIlEWKFAdcH4nx2uGwdS7ooF2qvFO52gEc9
 2VjCJX6WXoMWknjTgps+XU0TZZhT4YHjlk8tkBClddqycaurUZTKPsGzidC33sp84tbE
 MPUmobw1kODlpnc80a5RJzP2Mn2CP9vqpqTC1cqbbY5qcZ51/FOiidNkvHmIgFLs2ZM4
 DS1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=y7FSlCxqTiV+aLCWbjQJU9D9WKVJd8Msu18nAcu9DFc=;
 b=mo+UxfSGnZCf/ULk5WvPV63G/lv71nx7zfY5a5X4dOTf/cTcQF77v9mOJ7aQsdwVDU
 YkN4EroUeM71VPIYLscTsJ40kl2ej27hdYXiASIgiNQb4IN+YR1piqCAWgAZ7p7G3hTf
 3nhk1Vwvoza3UIQjcf488P8cTrkq7F4h8tsg+r+yTDDXrYueze4Hghc1Eo0f3jpxDT1N
 qtSAWRG67dsK3Y7QTPrrVltW5/qpYifIcVJSFniXHNCfnfU9wjsxjGOi3zZ/A7X/Jx+l
 i8vjfz2IzTYzU3aqYEZJFebCHoGtQmlSB/U1QCMXfZXFqjlMnQyWGMdYaJBF2c9c77qy
 nNlA==
X-Gm-Message-State: APjAAAWWVJkvVoHf9oo1g/XYGfcO0IdOJDE5H6Ej/zJnQQn6u/mbZgYz
 AOdloz3CjgQEe8cM8aYruhEL1w==
X-Google-Smtp-Source: APXvYqzmgsVPegnWTfR8/Z+M4a3NZhLy3c7dVScTI24947fSqOal+tw6sXz+yyRwBm4cieHnxdpseg==
X-Received: by 2002:a24:874a:: with SMTP id f71mr20199551ite.142.1558724642016; 
 Fri, 24 May 2019 12:04:02 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 x20sm1120899ioa.40.2019.05.24.12.04.01
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 24 May 2019 12:04:01 -0700 (PDT)
Date: Fri, 24 May 2019 12:04:00 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH v2] PCI: endpoint: Set endpoint controller pointer to null
In-Reply-To: <20190524063809.GA25866@infradead.org>
Message-ID: <alpine.DEB.2.21.9999.1905241200070.31734@viisi.sifive.com>
References: <1558647944-13816-1-git-send-email-alan.mikhak@sifive.com>
 <20190524063809.GA25866@infradead.org>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_120404_695150_B321D918 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Alan Mikhak <alan.mikhak@sifive.com>, palmer@sifive.com,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 23 May 2019, Christoph Hellwig wrote:

> [trimming recipient list]
> 
> 
> How is this related to arch/riscv?

This was my doing: I suggested to Alan that he copy these messages to the 
linux-riscv mailing list.  We're seeing interest from people who want to 
build PCIe cards based on RISC-V Linux, so I thought it might increase the 
potential review coverage for these patches.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
