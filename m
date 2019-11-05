Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73004EF31C
	for <lists+linux-riscv@lfdr.de>; Tue,  5 Nov 2019 02:59:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ydt8ApBysIdsx/7qyVIPKSrAeQ2vs1aKgtMku1Ud240=; b=GE1dvpiv3bvI/J
	X+1tOA+H5Xth4Z90N+8n6YoeRjjt6Rry4BtzW2GjKcai7plTneBeQCXSr8UQ2/v0B3zRqaBkLuTtc
	5qj9gmNl24xoSKd0ikAYp48rhWfRVaZThcMwnJ3wXCi13L037RabbotcnY+/Lz2zoveQZVbqQHSHg
	YNhSXnXxrMNPiGZ0Mk8yV7/p8FtjJnPjSTvYLAVQK3FBcF/qQjOkEPr09x81lWRBvTMk63duJTfnJ
	cvL/U5qXE6CPCvpsG6cdh1xjFvKpulbEBMa+pHL6M9EunVjN2LjXx+0Q20QwsP+3J3hDK50M2nH6E
	m0lQbJ1/SJSmaIw3jfCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRo7d-0001Ga-Ug; Tue, 05 Nov 2019 01:59:05 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRo7a-0001Fs-9e
 for linux-riscv@lists.infradead.org; Tue, 05 Nov 2019 01:59:03 +0000
Received: by mail-pf1-x441.google.com with SMTP id v19so13951026pfm.3
 for <linux-riscv@lists.infradead.org>; Mon, 04 Nov 2019 17:59:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OKe5vka41vCk7IJBHRB0aU/h2BDmqOkfTUawjJnfeSU=;
 b=kqzGoQTrxwP3jEQq+Yl+YrUma3unFzu79pdCMhJiuD8Ksbdd8H6J2IMXxzus5hAQXl
 jawP+rzmoae5W6MB/cQeq7UL2tMioZDcsRvX7uAVlpOu3y3ZNl+SjoJ1IPnbAU1LB0Vk
 bKj8uQbbbANJIk9/Go4vcAiyGc8+2PBAeXIfDUQ/YhkgUZwB+hYs/mx4gk0HBUShZpXe
 c6/RxTCzkwJS5SHh6nm19fEiQMBSqvBR1fT2FGIBIH423yyKXaD1a9xF/nVJsX/QvDAD
 XQSmki1VYaHnkYiXEHQ8jsZheB2F31Ndnu8eOtlzGF5lYY6lfEUJfsTO58KhhXeXLVhC
 lnVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OKe5vka41vCk7IJBHRB0aU/h2BDmqOkfTUawjJnfeSU=;
 b=VhIsiowzWObOCe+VH0GMqSOyl4VhCfPl2IkTFDOrHhaSGENq9UDIHYUisvnivJ1XX4
 VJAeT3s/zeELWBSSKyR84OUy+Z5FaX452X3+iRB7T3vsoiLvqTveIaMAkYVc2f972wqY
 7m6o96lOzOpaOusjrIHtVT4yUWMtWx5MSVGcjXH3e0MbWSWEYwwbQxJNl4wkRYD+2pRa
 sEnZwZ2PEHqvEAiJRvj/0tJSAdenacgXzR8cfXWCHczDdF+9aYY2lNEXupc3YkFZ/M9v
 nHxJlc6wMnr0VyhYaN/XxADPf01Stqphv0oSCIFntH0s8I/+Uu2KOUP7LmQHdC3RdE3C
 EjNQ==
X-Gm-Message-State: APjAAAUrzVm/08WPmRFrOcNorl8fPEuoZYxeh67KhJvjgTiMyxO6D09z
 WBxIDie0XKY3qnGsZBxmif+8NA==
X-Google-Smtp-Source: APXvYqwtM23oxRwflZx1y81RMNLN2ECVpJdBVhvgKUWdOhUuSlJxbqlk8BuK0F22fNGLMEtYVGVIIA==
X-Received: by 2002:a63:e056:: with SMTP id n22mr32592549pgj.73.1572919141406; 
 Mon, 04 Nov 2019 17:59:01 -0800 (PST)
Received: from localhost.localdomain (220-132-236-182.HINET-IP.hinet.net.
 [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id j6sm16484444pfa.124.2019.11.04.17.58.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 04 Nov 2019 17:59:00 -0800 (PST)
From: Vincent Chen <vincent.chen@sifive.com>
To: paul.walmsley@sifive.com,
	mathieu.desnoyers@efficios.com
Subject: [PATCH 1/3] riscv: add required functions to enable
 HAVE_REGS_AND_STACK_ACCESS_API
Date: Tue,  5 Nov 2019 09:58:32 +0800
Message-Id: <1572919114-3886-2-git-send-email-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1572919114-3886-1-git-send-email-vincent.chen@sifive.com>
References: <1572919114-3886-1-git-send-email-vincent.chen@sifive.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_175902_340815_E5238DEC 
X-CRM114-Status: GOOD (  16.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: vincent.chen@sifive.com, linux-riscv@lists.infradead.org,
 =?UTF-8?q?Patrick=20St=C3=A4hlin?= <me@packi.ch>,
 linux-kselftest@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

SW4gb3JkZXIgdG8gc2VsZWN0IEhBVkVfUkVHU19BTkRfU1RBQ0tfQUNDRVNTX0FQSSwgYWRkaW5n
IHRoZSBBUElzCnJlcXVpcmVkIGJ5IGtwcm9iZXMgdG8gYWNjZXNzIHB0X3JlZ3MgYW5kIHN0YWNr
IGVudHJpZXMgdG8gdGhlIFJJU0MtVgpwb3J0cy4KClNpZ25lZC1vZmYtYnk6IFBhdHJpY2sgU3TD
pGhsaW4gPG1lQHBhY2tpLmNoPgpTaWduZWQtb2ZmLWJ5OiBWaW5jZW50IENoZW4gPHZpbmNlbnQu
Y2hlbkBzaWZpdmUuY29tPgotLS0KIGFyY2gvcmlzY3YvS2NvbmZpZyAgICAgICAgICAgICAgfCAg
MSArCiBhcmNoL3Jpc2N2L2luY2x1ZGUvYXNtL3B0cmFjZS5oIHwgMjkgKysrKysrKysrKystCiBh
cmNoL3Jpc2N2L2tlcm5lbC9wdHJhY2UuYyAgICAgIHwgOTkgKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysKIDMgZmlsZXMgY2hhbmdlZCwgMTI4IGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9hcmNoL3Jpc2N2L0tjb25maWcgYi9hcmNoL3Jp
c2N2L0tjb25maWcKaW5kZXggOGVlYmJjODg2MGJiLi5kNWJiZjQyMjNmZDIgMTAwNjQ0Ci0tLSBh
L2FyY2gvcmlzY3YvS2NvbmZpZworKysgYi9hcmNoL3Jpc2N2L0tjb25maWcKQEAgLTYxLDYgKzYx
LDcgQEAgY29uZmlnIFJJU0NWCiAJc2VsZWN0IFNQQVJTRU1FTV9TVEFUSUMgaWYgMzJCSVQKIAlz
ZWxlY3QgQVJDSF9XQU5UX0RFRkFVTFRfVE9QRE9XTl9NTUFQX0xBWU9VVCBpZiBNTVUKIAlzZWxl
Y3QgSEFWRV9BUkNIX01NQVBfUk5EX0JJVFMKKwlzZWxlY3QgSEFWRV9SRUdTX0FORF9TVEFDS19B
Q0NFU1NfQVBJCiAKIGNvbmZpZyBBUkNIX01NQVBfUk5EX0JJVFNfTUlOCiAJZGVmYXVsdCAxOCBp
ZiA2NEJJVApkaWZmIC0tZ2l0IGEvYXJjaC9yaXNjdi9pbmNsdWRlL2FzbS9wdHJhY2UuaCBiL2Fy
Y2gvcmlzY3YvaW5jbHVkZS9hc20vcHRyYWNlLmgKaW5kZXggZDQ4ZDFlMTM5NzNjLi42MzViN2I1
NTA2ZWMgMTAwNjQ0Ci0tLSBhL2FyY2gvcmlzY3YvaW5jbHVkZS9hc20vcHRyYWNlLmgKKysrIGIv
YXJjaC9yaXNjdi9pbmNsdWRlL2FzbS9wdHJhY2UuaApAQCAtOCw2ICs4LDcgQEAKIAogI2luY2x1
ZGUgPHVhcGkvYXNtL3B0cmFjZS5oPgogI2luY2x1ZGUgPGFzbS9jc3IuaD4KKyNpbmNsdWRlIDxs
aW51eC9jb21waWxlci5oPgogCiAjaWZuZGVmIF9fQVNTRU1CTFlfXwogCkBAIC01OSw3ICs2MCw3
IEBAIHN0cnVjdCBwdF9yZWdzIHsKICNlbmRpZgogCiAjZGVmaW5lIHVzZXJfbW9kZShyZWdzKSAo
KChyZWdzKS0+c3N0YXR1cyAmIFNSX1NQUCkgPT0gMCkKLQorI2RlZmluZSBNQVhfUkVHX09GRlNF
VCBvZmZzZXRvZihzdHJ1Y3QgcHRfcmVncywgb3JpZ19hMCkKIAogLyogSGVscGVycyBmb3Igd29y
a2luZyB3aXRoIHRoZSBpbnN0cnVjdGlvbiBwb2ludGVyICovCiBzdGF0aWMgaW5saW5lIHVuc2ln
bmVkIGxvbmcgaW5zdHJ1Y3Rpb25fcG9pbnRlcihzdHJ1Y3QgcHRfcmVncyAqcmVncykKQEAgLTc5
LDYgKzgwLDEyIEBAIHN0YXRpYyBpbmxpbmUgdW5zaWduZWQgbG9uZyB1c2VyX3N0YWNrX3BvaW50
ZXIoc3RydWN0IHB0X3JlZ3MgKnJlZ3MpCiB7CiAJcmV0dXJuIHJlZ3MtPnNwOwogfQorCitzdGF0
aWMgaW5saW5lIHVuc2lnbmVkIGxvbmcga2VybmVsX3N0YWNrX3BvaW50ZXIoc3RydWN0IHB0X3Jl
Z3MgKnJlZ3MpCit7CisJcmV0dXJuIHJlZ3MtPnNwOworfQorCiBzdGF0aWMgaW5saW5lIHZvaWQg
dXNlcl9zdGFja19wb2ludGVyX3NldChzdHJ1Y3QgcHRfcmVncyAqcmVncywKIAkJCQkJICB1bnNp
Z25lZCBsb25nIHZhbCkKIHsKQEAgLTEwMSw2ICsxMDgsMjYgQEAgc3RhdGljIGlubGluZSB1bnNp
Z25lZCBsb25nIHJlZ3NfcmV0dXJuX3ZhbHVlKHN0cnVjdCBwdF9yZWdzICpyZWdzKQogCXJldHVy
biByZWdzLT5hMDsKIH0KIAoraW50IHJlZ3NfcXVlcnlfcmVnaXN0ZXJfb2Zmc2V0KGNvbnN0IGNo
YXIgKm5hbWUpOworCit1bnNpZ25lZCBsb25nIHJlZ3NfZ2V0X2tlcm5lbF9zdGFja19udGgoc3Ry
dWN0IHB0X3JlZ3MgKnJlZ3MsIHVuc2lnbmVkIGludCBuKTsKKy8qKgorICogcmVnc19nZXRfcmVn
aXN0ZXIoKSAtIGdldCByZWdpc3RlciB2YWx1ZSBmcm9tIGl0cyBvZmZzZXQKKyAqIEByZWdzOglw
dF9yZWdzIGZyb20gd2hpY2ggcmVnaXN0ZXIgdmFsdWUgaXMgZ290dGVuCisgKiBAb2Zmc2V0Oglv
ZmZzZXQgb2YgdGhlIHJlZ2lzdGVyLgorICoKKyAqIHJlZ3NfZ2V0X3JlZ2lzdGVyIHJldHVybnMg
dGhlIHZhbHVlIG9mIGEgcmVnaXN0ZXIgd2hvc2Ugb2Zmc2V0IGZyb20gQHJlZ3MuCisgKiBUaGUg
QG9mZnNldCBpcyB0aGUgb2Zmc2V0IG9mIHRoZSByZWdpc3RlciBpbiBzdHJ1Y3QgcHRfcmVncy4K
KyAqIElmIEBvZmZzZXQgaXMgYmlnZ2VyIHRoYW4gTUFYX1JFR19PRkZTRVQsIHRoaXMgcmV0dXJu
cyAwLgorICovCitzdGF0aWMgaW5saW5lIHVuc2lnbmVkIGxvbmcgcmVnc19nZXRfcmVnaXN0ZXIo
c3RydWN0IHB0X3JlZ3MgKnJlZ3MsCisJCQkJCSAgICAgIHVuc2lnbmVkIGludCBvZmZzZXQpCit7
CisJaWYgKHVubGlrZWx5KG9mZnNldCA+IE1BWF9SRUdfT0ZGU0VUKSkKKwkJcmV0dXJuIDA7CisK
KwlyZXR1cm4gKih1bnNpZ25lZCBsb25nICopKCh1bnNpZ25lZCBsb25nKXJlZ3MgKyBvZmZzZXQp
OworfQogI2VuZGlmIC8qIF9fQVNTRU1CTFlfXyAqLwogCiAjZW5kaWYgLyogX0FTTV9SSVNDVl9Q
VFJBQ0VfSCAqLwpkaWZmIC0tZ2l0IGEvYXJjaC9yaXNjdi9rZXJuZWwvcHRyYWNlLmMgYi9hcmNo
L3Jpc2N2L2tlcm5lbC9wdHJhY2UuYwppbmRleCAxMjUyMTEzZWY4YjIuLjJhZTQ1MGQ2NzY1OSAx
MDA2NDQKLS0tIGEvYXJjaC9yaXNjdi9rZXJuZWwvcHRyYWNlLmMKKysrIGIvYXJjaC9yaXNjdi9r
ZXJuZWwvcHRyYWNlLmMKQEAgLTEyNSw2ICsxMjUsMTA1IEBAIGNvbnN0IHN0cnVjdCB1c2VyX3Jl
Z3NldF92aWV3ICp0YXNrX3VzZXJfcmVnc2V0X3ZpZXcoc3RydWN0IHRhc2tfc3RydWN0ICp0YXNr
KQogCXJldHVybiAmcmlzY3ZfdXNlcl9uYXRpdmVfdmlldzsKIH0KIAorc3RydWN0IHB0X3JlZ3Nf
b2Zmc2V0IHsKKwljb25zdCBjaGFyICpuYW1lOworCWludCBvZmZzZXQ7Cit9OworCisjZGVmaW5l
IFJFR19PRkZTRVRfTkFNRShyKSB7Lm5hbWUgPSAjciwgLm9mZnNldCA9IG9mZnNldG9mKHN0cnVj
dCBwdF9yZWdzLCByKX0KKyNkZWZpbmUgUkVHX09GRlNFVF9FTkQgey5uYW1lID0gTlVMTCwgLm9m
ZnNldCA9IDB9CisKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgcHRfcmVnc19vZmZzZXQgcmVnb2Zmc2V0
X3RhYmxlW10gPSB7CisJUkVHX09GRlNFVF9OQU1FKHNlcGMpLAorCVJFR19PRkZTRVRfTkFNRShy
YSksCisJUkVHX09GRlNFVF9OQU1FKHNwKSwKKwlSRUdfT0ZGU0VUX05BTUUoZ3ApLAorCVJFR19P
RkZTRVRfTkFNRSh0cCksCisJUkVHX09GRlNFVF9OQU1FKHQwKSwKKwlSRUdfT0ZGU0VUX05BTUUo
dDEpLAorCVJFR19PRkZTRVRfTkFNRSh0MiksCisJUkVHX09GRlNFVF9OQU1FKHMwKSwKKwlSRUdf
T0ZGU0VUX05BTUUoczEpLAorCVJFR19PRkZTRVRfTkFNRShhMCksCisJUkVHX09GRlNFVF9OQU1F
KGExKSwKKwlSRUdfT0ZGU0VUX05BTUUoYTIpLAorCVJFR19PRkZTRVRfTkFNRShhMyksCisJUkVH
X09GRlNFVF9OQU1FKGE0KSwKKwlSRUdfT0ZGU0VUX05BTUUoYTUpLAorCVJFR19PRkZTRVRfTkFN
RShhNiksCisJUkVHX09GRlNFVF9OQU1FKGE3KSwKKwlSRUdfT0ZGU0VUX05BTUUoczIpLAorCVJF
R19PRkZTRVRfTkFNRShzMyksCisJUkVHX09GRlNFVF9OQU1FKHM0KSwKKwlSRUdfT0ZGU0VUX05B
TUUoczUpLAorCVJFR19PRkZTRVRfTkFNRShzNiksCisJUkVHX09GRlNFVF9OQU1FKHM3KSwKKwlS
RUdfT0ZGU0VUX05BTUUoczgpLAorCVJFR19PRkZTRVRfTkFNRShzOSksCisJUkVHX09GRlNFVF9O
QU1FKHMxMCksCisJUkVHX09GRlNFVF9OQU1FKHMxMSksCisJUkVHX09GRlNFVF9OQU1FKHQzKSwK
KwlSRUdfT0ZGU0VUX05BTUUodDQpLAorCVJFR19PRkZTRVRfTkFNRSh0NSksCisJUkVHX09GRlNF
VF9OQU1FKHQ2KSwKKwlSRUdfT0ZGU0VUX05BTUUoc3N0YXR1cyksCisJUkVHX09GRlNFVF9OQU1F
KHNiYWRhZGRyKSwKKwlSRUdfT0ZGU0VUX05BTUUoc2NhdXNlKSwKKwlSRUdfT0ZGU0VUX05BTUUo
b3JpZ19hMCksCisJUkVHX09GRlNFVF9FTkQsCit9OworCisvKioKKyAqIHJlZ3NfcXVlcnlfcmVn
aXN0ZXJfb2Zmc2V0KCkgLSBxdWVyeSByZWdpc3RlciBvZmZzZXQgZnJvbSBpdHMgbmFtZQorICog
QG5hbWU6CXRoZSBuYW1lIG9mIGEgcmVnaXN0ZXIKKyAqCisgKiByZWdzX3F1ZXJ5X3JlZ2lzdGVy
X29mZnNldCgpIHJldHVybnMgdGhlIG9mZnNldCBvZiBhIHJlZ2lzdGVyIGluIHN0cnVjdAorICog
cHRfcmVncyBmcm9tIGl0cyBuYW1lLiBJZiB0aGUgbmFtZSBpcyBpbnZhbGlkLCB0aGlzIHJldHVy
bnMgLUVJTlZBTDsKKyAqLworaW50IHJlZ3NfcXVlcnlfcmVnaXN0ZXJfb2Zmc2V0KGNvbnN0IGNo
YXIgKm5hbWUpCit7CisJY29uc3Qgc3RydWN0IHB0X3JlZ3Nfb2Zmc2V0ICpyb2ZmOworCisJZm9y
IChyb2ZmID0gcmVnb2Zmc2V0X3RhYmxlOyByb2ZmLT5uYW1lICE9IE5VTEw7IHJvZmYrKykKKwkJ
aWYgKCFzdHJjbXAocm9mZi0+bmFtZSwgbmFtZSkpCisJCQlyZXR1cm4gcm9mZi0+b2Zmc2V0Owor
CXJldHVybiAtRUlOVkFMOworfQorCisvKioKKyAqIHJlZ3Nfd2l0aGluX2tlcm5lbF9zdGFjaygp
IC0gY2hlY2sgdGhlIGFkZHJlc3MgaW4gdGhlIHN0YWNrCisgKiBAcmVnczogICAgICBwdF9yZWdz
IHdoaWNoIGNvbnRhaW5zIGtlcm5lbCBzdGFjayBwb2ludGVyLgorICogQGFkZHI6ICAgICAgYWRk
cmVzcyB3aGljaCBpcyBjaGVja2VkLgorICoKKyAqIHJlZ3Nfd2l0aGluX2tlcm5lbF9zdGFjaygp
IGNoZWNrcyBAYWRkciBpcyB3aXRoaW4gdGhlIGtlcm5lbCBzdGFjayBwYWdlKHMpLgorICogSWYg
QGFkZHIgaXMgd2l0aGluIHRoZSBrZXJuZWwgc3RhY2ssIGl0IHJldHVybnMgdHJ1ZS4gSWYgbm90
LCByZXR1cm5zIGZhbHNlLgorICovCitzdGF0aWMgYm9vbCByZWdzX3dpdGhpbl9rZXJuZWxfc3Rh
Y2soc3RydWN0IHB0X3JlZ3MgKnJlZ3MsIHVuc2lnbmVkIGxvbmcgYWRkcikKK3sKKwlyZXR1cm4g
KGFkZHIgJiB+KFRIUkVBRF9TSVpFIC0gMSkpICA9PQorCQkoa2VybmVsX3N0YWNrX3BvaW50ZXIo
cmVncykgJiB+KFRIUkVBRF9TSVpFIC0gMSkpOworfQorCisvKioKKyAqIHJlZ3NfZ2V0X2tlcm5l
bF9zdGFja19udGgoKSAtIGdldCBOdGggZW50cnkgb2YgdGhlIHN0YWNrCisgKiBAcmVnczoJcHRf
cmVncyB3aGljaCBjb250YWlucyBrZXJuZWwgc3RhY2sgcG9pbnRlci4KKyAqIEBuOgkJc3RhY2sg
ZW50cnkgbnVtYmVyLgorICoKKyAqIHJlZ3NfZ2V0X2tlcm5lbF9zdGFja19udGgoKSByZXR1cm5z
IEBuIHRoIGVudHJ5IG9mIHRoZSBrZXJuZWwgc3RhY2sgd2hpY2gKKyAqIGlzIHNwZWNpZmllZCBi
eSBAcmVncy4gSWYgdGhlIEBuIHRoIGVudHJ5IGlzIE5PVCBpbiB0aGUga2VybmVsIHN0YWNrLAor
ICogdGhpcyByZXR1cm5zIDAuCisgKi8KK3Vuc2lnbmVkIGxvbmcgcmVnc19nZXRfa2VybmVsX3N0
YWNrX250aChzdHJ1Y3QgcHRfcmVncyAqcmVncywgdW5zaWduZWQgaW50IG4pCit7CisJdW5zaWdu
ZWQgbG9uZyAqYWRkciA9ICh1bnNpZ25lZCBsb25nICopa2VybmVsX3N0YWNrX3BvaW50ZXIocmVn
cyk7CisKKwlhZGRyICs9IG47CisJaWYgKHJlZ3Nfd2l0aGluX2tlcm5lbF9zdGFjayhyZWdzLCAo
dW5zaWduZWQgbG9uZylhZGRyKSkKKwkJcmV0dXJuICphZGRyOworCWVsc2UKKwkJcmV0dXJuIDA7
Cit9CisKIHZvaWQgcHRyYWNlX2Rpc2FibGUoc3RydWN0IHRhc2tfc3RydWN0ICpjaGlsZCkKIHsK
IAljbGVhcl90c2tfdGhyZWFkX2ZsYWcoY2hpbGQsIFRJRl9TWVNDQUxMX1RSQUNFKTsKLS0gCjIu
Ny40CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtcmlzY3YgbWFpbGluZyBsaXN0CmxpbnV4LXJpc2N2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yaXNjdgo=
