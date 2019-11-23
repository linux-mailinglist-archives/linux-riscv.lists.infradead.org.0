Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EBD9107C8D
	for <lists+linux-riscv@lfdr.de>; Sat, 23 Nov 2019 03:47:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qv88z9xmP7g1oZBGsujVdc6KU/RQVu2SJLyaU+n1OzA=; b=doaKnPgufYEV7b
	90svibxFCFMcbUXaF6zdYln0rOoCrX+xGS4vjRIkFv+TCd+lneVshXlC12ipzVpUjOpO+cr/w30Gi
	bP+UAM90r59Z3TVYpnFrNQdgknA44IEHTiEFHbrIFmO9qqu73dOcXun0QjEP9QUXLjLBxvJI63Y+C
	jEEpv7EmelolN+eOSO+vnXFlZ1ret06VoM2DMTM/tIAVOIRoRnFcdq5oPFngcENrAVdLT6IrYQtQS
	ZDBHtSYHVUDCLyV0E4iQTX2k8scVe9qFT0ts9sOZhOQUjmgw9kv5Q8xdqSWRm6Aknt48f7VHtNAO3
	YO2aCQw9rah5UaXpdLbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYLSH-0000EF-IE; Sat, 23 Nov 2019 02:47:25 +0000
Received: from mail-il1-x12b.google.com ([2607:f8b0:4864:20::12b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYLSE-0000Dp-9U
 for linux-riscv@lists.infradead.org; Sat, 23 Nov 2019 02:47:23 +0000
Received: by mail-il1-x12b.google.com with SMTP id a7so9030946ild.6
 for <linux-riscv@lists.infradead.org>; Fri, 22 Nov 2019 18:47:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=ugN0H6o6+iv0bTGPqtKTrS1DxYPCjLTNLLqj/66y6T0=;
 b=lTzLyirBe5RcDyMZM83LOrE+czUx5xmfrmUpEJlt8eZ7TlgoWToz0+7iZP82ENIZiT
 PtHn6dSCHNCequq8WjNSrucEBBQyM3bpSRwcguVirt/2nwhCMEZbINOdsFHu3tg8duUM
 cjCORPUeQlGau/JhVbSWkypPMVBplOhH2Z1XoKEDLhhwYteS5SDfUCJsEYcajcU+uZ++
 zcNx1u+hJ9dbqEbrkxEuVGzfSX5GXoF7Xv2AlUwkrU5bSLTHLZNIi+/DfLt9jBoIkZQj
 anQi0d5HqdChM1vqVt8JA8qn2RtkceCATQfre4SEFwB7hRr1RKdOJC/03w7aJL7Qg8p+
 CgIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=ugN0H6o6+iv0bTGPqtKTrS1DxYPCjLTNLLqj/66y6T0=;
 b=o7rpXffCL9VVeI8cZA2cxnOFdQncGe//l9w7pBUzG13v1sgvR8iKE1CXduuQHR3ZWR
 ru1RTFuhj6YbbVhGUArptc8lwE9N0EOOpQukD31IoWfGlRb2pMwDupsYwz6MB3p0hgqH
 GkaMP7ToPB8TN5IRQXIv0b5RytEht1WRzN3/HZBzEHcCdGXnwwUClj2NMqK1lPzOQ1Ot
 geYlPmpafIbR226I/aKv88kFWvcCMsjEpAxqudc+80pI9AvmNM1+9tdIEKAdH8HjdHSK
 7kChB4Pdw0hCIIQa5wK/JtiAJFFEJQHx+1sCFW2/5574pl92UFMAKiuBoCzuhYD3RTcb
 /Gwg==
X-Gm-Message-State: APjAAAVhjD7Hz2cI7Oweh6N7I3r9DsdYtOrnm36CFTcnOQUAtONtAQ1X
 lrvRxRBSj5s4m8CtOnL2/XKVJmPkmFI=
X-Google-Smtp-Source: APXvYqxBt3Eqoc2Se9XTpq7akec4VkVbMDOzhm2Hhrd1itUIvNVbgVwVzXfBqA08yfGk/JMaxeyNfQ==
X-Received: by 2002:a02:3f10:: with SMTP id d16mr17243613jaa.139.1574477241376; 
 Fri, 22 Nov 2019 18:47:21 -0800 (PST)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id r17sm3601025ill.19.2019.11.22.18.47.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Nov 2019 18:47:20 -0800 (PST)
Date: Fri, 22 Nov 2019 18:47:19 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Andreas Schwab <schwab@suse.de>
Subject: Re: Experimental branch
In-Reply-To: <mvmmuctpieo.fsf@suse.de>
Message-ID: <alpine.DEB.2.21.9999.1911221846560.14532@viisi.sifive.com>
References: <alpine.DEB.2.21.9999.1910311101480.23683@viisi.sifive.com>
 <mvmmuctpieo.fsf@suse.de>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_184722_331242_54F66B2C 
X-CRM114-Status: UNSURE (   7.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:12b listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 18 Nov 2019, Andreas Schwab wrote:

> On Okt 31 2019, Paul Walmsley wrote:
> 
> > - Anup Patel's KVM patches (waiting for the hypervisor specification to 
> >   exit draft status, and for reviews and testing)
> 
> Note that the KVM series depens on the SBI v0.2 series, but the latter
> is missing from the branch.

Thanks for pointing that out - will fix.

- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
